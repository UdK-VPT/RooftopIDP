# <codecell> paths and info
import os, sys
homeDir = os.environ['HOMEPATH']
jmodDir = os.environ['JMODELICA_HOME']
workDir = "Desktop" # has to be adapted by the user !!!
moLiDir = os.path.join(homeDir, workDir, "RooftopIDP")

# give the path to directory where package.mo is stored
moLibs = [os.path.join(jmodDir, "ThirdParty\MSL\Modelica"),
          os.path.join(moLiDir,"BuildingSystems\BuildingSystems"),
          os.path.join(moLiDir,"RooftopModels"),
         ]

print(sys.version)
print(all(os.path.isfile(os.path.join(moLib, "package.mo")) for moLib in moLibs))
print(os.getcwd())

# <codecell> compile model to fmu
from pymodelica import compile_fmu
model_name = 'RooftopModels.PhotovoltaicSystem.TestPV'
my_fmu = compile_fmu(model_name, moLibs)

# <codecell> simulate the fmu and store results
from pyfmi import load_fmu

myModel = load_fmu(my_fmu)

opts = myModel.simulate_options()
opts['solver'] = "CVode"
opts['ncp'] = 8760
opts['result_handling']="file"
opts["CVode_options"]['discr'] = 'BDF'
opts['CVode_options']['iter'] = 'Newton'
opts['CVode_options']['maxord'] = 5
opts['CVode_options']['atol'] = 1e-5
opts['CVode_options']['rtol'] = 1e-5

res = myModel.simulate(start_time=0.0, final_time=31536000.0, options=opts)

# <codecell> plotting of the results
import pylab as P
fig = P.figure(1)
P.clf()
# PV generator
y1 = res['pvSystem.PGen']
t = res['time']
P.subplot(3,1,1)
P.plot(t, y1)
P.legend(['pvSystem.PGen'])
P.ylabel('Power (W)')
P.xlabel('Time (s)')
# PV modules
# power
y1 = res['pvSystem.pvFacadeSouth1.PField']
y2 = res['pvSystem.pvFacadeSouth1.PField']
y3 = res['pvSystem.pvRoofNorth1.PField']
y4 = res['pvSystem.pvFacadeNorth1.PField']
t = res['time']
P.subplot(3,1,2)
P.plot(t, y1, t, y2, t, y3, t, y4)
P.legend(['pvSystem.pvFacadeSouth1.PField','pvSystem.pvFacadeSouth1.PField','pvSystem.pvRoofNorth1.PField','pvSystem.pvFacadeNorth1.PField'])
P.ylabel('Power (W)')
P.xlabel('Time (s)')
# module angles
y1 = res['pvSystem.pvFacadeSouth1.angleDegTil']
y2 = res['pvSystem.pvRoofSouth1.angleDegTil']
y3 = res['pvSystem.pvRoofNorth1.angleDegTil']
y4 = res['pvSystem.pvFacadeNorth1.angleDegTil']
P.subplot(3,1,3)
P.plot(t, y1, t, y2, t, y3, t, y4)
P.legend(['pvSystem.pvFacadeSouth1.angleDegTil','pvSystem.pvRoofSouth1.angleDegTil','pvSystem.pvRoofNorth1.angleDegTil','pvSystem.pvFacadeNorth1.angleDegTil'])
P.ylabel('angle (degree)')
P.xlabel('Time (s)')
P.show()
