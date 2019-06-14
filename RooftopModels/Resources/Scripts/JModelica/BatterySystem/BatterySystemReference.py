# <codecell> paths and info
import os, sys
homeDir = os.environ['HOMEPATH']
jmodDir = os.environ['JMODELICA_HOME']
workDir = "Desktop" # has to be adapted by the user !!!
moLiDir = os.path.join(homeDir, workDir, "Rooftop_Reference")

# give the path to directory where package.mo is stored
moLibs = [os.path.join(jmodDir, "ThirdParty\MSL\Modelica"),
          os.path.join(moLiDir,"BuildingSystems\BuildingSystems"),
          os.path.join(moLiDir,"RooftopModels"),
         ]

print(sys.version)
print(all(os.path.isfile(os.path.join(moLib, "package.mo")) for moLib in moLibs))
print(os.getcwd())

# necessary for large models
import pymodelica
pymodelica.environ['JVM_ARGS'] = '-Xmx11048m'

# <codecell> compile model to fmu
from pymodelica import compile_fmu
model_name = 'RooftopModels.System.ReferenceSystem_SummerPeriod'
my_fmu = compile_fmu(model_name, moLibs)

# <codecell> simulate the fmu and store results
from pyfmi import load_fmu

myModel = load_fmu(my_fmu)

opts = myModel.simulate_options()
opts['solver'] = "CVode"
opts['ncp'] = 100
opts['result_handling']="file"
opts["CVode_options"]['discr'] = 'BDF'
opts['CVode_options']['iter'] = 'Newton'
opts['CVode_options']['maxord'] = 5
opts['CVode_options']['atol'] = 1e-5
opts['CVode_options']['rtol'] = 1e-5

res = myModel.simulate(start_time=1.62e7, final_time=1.65e7, options=opts)

# <codecell> plotting of the results
import pylab as P
fig = P.figure(1)
P.clf()
# Building
# Temperatures
y1 = res['ambient.TAirRef']
y2 = res['building.lab.TAir']
y3 = res['building.toilet.TAir']
y4 = res['building.core.TAir']
y5 = res['building.seminar.TAir']
t = res['time']
P.subplot(3,1,1)
P.plot(t, y1, t, y2, t, y3, t, y4, t, y5)
P.legend(['ambient.TAirRef','building.lab.TAir','building.toilet.TAir','building.core.TAir','building.seminar.TAir'])
P.ylabel('Temperature (K)')
P.xlabel('Time (s)')
# cooling ceiling
y1 = res['hVAC.CC1Lab.Q_flow']
y2 = res['hVAC.CC1Sem.Q_flow']
P.subplot(3,1,2)
P.plot(t, y1, t, y2)
P.legend(['hVAC.CC1Lab.Q_flow','hVAC.CC1Sem.Q_flow'])
P.ylabel('Power (W)')
P.xlabel('Time (s)')
# PV system
y1 = res['pvSystem.pvFacadeSouth1.PField']
y2 = res['pvSystem.pvRoofSouth1.PField']
y3 = res['pvSystem.pvRoofNorth1.PField']
y4 = res['pvSystem.pvFacadeNorth1.PField']
P.subplot(3,1,3)
P.plot(t, y1, t, y2, t, y3, t, y4)
P.legend(['pvSystem.pvFacadeSouth1.PField','pvSystem.pvRoofSouth1.PField','pvSystem.pvRoofNorth1.PField','pvSystem.pvFacadeNorth1.PField'])
P.ylabel('Power (W)')
P.xlabel('Time (s)')
P.show()
