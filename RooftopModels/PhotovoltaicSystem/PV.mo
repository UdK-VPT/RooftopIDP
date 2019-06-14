within RooftopModels.PhotovoltaicSystem;
model PV
  "Photovoltaic system system of the Rooftop building"
  parameter Modelica.SIunits.Conversions.NonSIunits.Angle_deg angleDegAziBuilding = 0.0
    "Azimuth angle of the building: south: 0 deg, east: -90 deg, west +90 deg, north: 180 deg"
    annotation(Dialog(tab="General",group="Orientation"));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth1(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110 pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-70,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth2(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-50,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth3(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-30,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth4(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-10,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth5(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={10,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth6(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={30,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth7(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={50,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeSouth8(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={70,-52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth1(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-70,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofNorth1(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={-70,18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeNorth2(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={-50,52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeNorth3(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={10,52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeNorth4(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={30,52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeNorth5(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={50,52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeNorth6(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={70,52})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth2(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-50,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth3(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-30,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth4(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={-10,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth5(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={10,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth6(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={30,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth7(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={50,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofSouth8(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=0+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=180,origin={70,-18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofNorth2(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={-50,18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofNorth3(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={10,18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofNorth4(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={30,18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofNorth5(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=1,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={50,18})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvRoofNorth6(
    nModPar=1,
    nModSer=4,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegTil_constant=3,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={70,18})));
  BuildingSystems.Interfaces.RadiationPort radiationPort1
    annotation (Placement(transformation(extent={{-76,62},{-64,74}}),
      iconTransformation(extent={{-72,54},{-66,60}})));
  BuildingSystems.Technologies.Photovoltaics.PVModules.PVModuleComplexMPP pvFacadeNorth1(
    use_AngleDegTil_in=true,
    nModPar=2,
    nModSer=1,
    redeclare
      BuildingSystems.Technologies.Photovoltaics.Data.PhotovoltaicModules.SolibroSL2CIGS110
      pvModuleData,
    angleDegAzi_constant=180+angleDegAziBuilding)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={-70,52})));
  BuildingSystems.Interfaces.RadiationPort radiationPort2
    annotation (Placement(transformation(extent={{-56,62},{-44,74}}),
      iconTransformation(extent={{-52,54},{-46,60}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort3
    annotation (Placement(transformation(extent={{4,62},{16,74}}),
      iconTransformation(extent={{8,54},{14,60}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort4
    annotation (Placement(transformation(extent={{24,62},{36,74}}),
      iconTransformation(extent={{28,54},{34,60}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort5
  annotation (Placement(transformation(extent={{44,62},{56,74}}),
    iconTransformation(extent={{48,54},{54,60}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort6
    annotation (Placement(transformation(extent={{64,62},{76,74}}),
      iconTransformation(extent={{68,54},{74,60}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort7
    annotation (Placement(transformation(extent={{-76,-76},{-64,-64}}),
      iconTransformation(extent={{-72,-52},{-66,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort8
    annotation (Placement(transformation(extent={{-56,-76},{-44,-64}}),
      iconTransformation(extent={{-52,-52},{-46,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort9
    annotation (Placement(transformation(extent={{4,-76},{16,-64}}),
      iconTransformation(extent={{8,-52},{14,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort10
    annotation (Placement(transformation(extent={{24,-76},{36,-64}}),
      iconTransformation(extent={{28,-52},{34,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort11
    annotation (Placement(transformation(extent={{44,-76},{56,-64}}),
      iconTransformation(extent={{48,-52},{54,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort12
    annotation (Placement(transformation(extent={{64,-76},{76,-64}}),
      iconTransformation(extent={{68,-52},{74,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort13
    annotation (Placement(transformation(extent={{-36,-76},{-24,-64}}),
      iconTransformation(extent={{-32,-52},{-26,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort14
    annotation (Placement(transformation(extent={{-16,-76},{-4,-64}}),
      iconTransformation(extent={{-12,-52},{-6,-46}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort15
    annotation (Placement(transformation(extent={{-76,-42},{-64,-30}}),
      iconTransformation(extent={{-72,-32},{-66,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort16
    annotation (Placement(transformation(extent={{-56,-42},{-44,-30}}),
      iconTransformation(extent={{-52,-32},{-46,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort17
    annotation (Placement(transformation(extent={{-36,-42},{-24,-30}}),
      iconTransformation(extent={{-32,-32},{-26,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort18
    annotation (Placement(transformation(extent={{-16,-42},{-4,-30}}),
      iconTransformation(extent={{-12,-32},{-6,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort19
    annotation (Placement(transformation(extent={{4,-42},{16,-30}}),
      iconTransformation(extent={{8,-32},{14,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort20
    annotation (Placement(transformation(extent={{24,-42},{36,-30}}),
      iconTransformation(extent={{28,-32},{34,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort21
    annotation (Placement(transformation(extent={{44,-42},{56,-30}}),
      iconTransformation(extent={{48,-32},{54,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort22
    annotation (Placement(transformation(extent={{64,-42},{76,-30}}),
      iconTransformation(extent={{68,-32},{74,-26}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort23
    annotation (Placement(transformation(extent={{-76,28},{-64,40}}),
      iconTransformation(extent={{-72,34},{-66,40}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort24
    annotation (Placement(transformation(extent={{-56,28},{-44,40}}),
      iconTransformation(extent={{-52,34},{-46,40}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort27
    annotation (Placement(transformation(extent={{4,28},{16,40}}),
      iconTransformation(extent={{8,34},{14,40}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort28
    annotation (Placement(transformation(extent={{24,28},{36,40}}),
      iconTransformation(extent={{28,34},{34,40}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort29
    annotation (Placement(transformation(extent={{44,28},{56,40}}),
      iconTransformation(extent={{48,34},{54,40}})));
  BuildingSystems.Interfaces.RadiationPort radiationPort30
    annotation (Placement(transformation(extent={{64,28},{76,40}}),
      iconTransformation(extent={{68,34},{74,40}})));
  BuildingSystems.Interfaces.Temp_KInput TAmb1
    annotation (Placement(transformation(extent={{-4,-4},{4,4}},rotation=270,origin={-66,70}),
      iconTransformation(extent={{-3,-3},{3,3}},rotation=270,origin={-63,57})));
  BuildingSystems.Interfaces.Temp_KInput TAmb2
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-46,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={-43,57})));
  BuildingSystems.Interfaces.Temp_KInput TAmb3
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={14,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={17,57})));
  BuildingSystems.Interfaces.Temp_KInput TAmb4
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={34,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={37,57})));
  BuildingSystems.Interfaces.Temp_KInput TAmb5
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={54,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={57,57})));
  BuildingSystems.Interfaces.Temp_KInput TAmb6
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={74,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={77,57})));
  BuildingSystems.Interfaces.Temp_KInput TAmb7
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-66,36}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={-63,37})));
  BuildingSystems.Interfaces.Temp_KInput TAmb8
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-46,36}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={-43,37})));
  BuildingSystems.Interfaces.Temp_KInput TAmb9
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={14,36}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={17,37})));
  BuildingSystems.Interfaces.Temp_KInput TAmb10
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={34,36}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={37,37})));
  BuildingSystems.Interfaces.Temp_KInput TAmb11
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={54,36}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={57,37})));
  BuildingSystems.Interfaces.Temp_KInput TAmb12
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={74,36}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={77,37})));
  BuildingSystems.Interfaces.Temp_KInput TAmb13
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-74,-72}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-75,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb14
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-54,-72}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-55,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb15
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-34,-72}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-35,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb16
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-14,-72}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-15,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb17
   annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={6,-72}),  iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={5,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb18
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={26,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={25,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb19
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={46,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={45,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb20
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={66,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={65,-49})));
  BuildingSystems.Interfaces.Temp_KInput TAmb21
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-74,-38}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-75,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb22
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-54,-38}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-55,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb23
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-34,-38}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-35,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb24
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-14,-38}),iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-15,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb25
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={6,-38}),  iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={5,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb26
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={26,-38}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={25,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb27
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={46,-38}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={45,-29})));
  BuildingSystems.Interfaces.Temp_KInput TAmb28
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={66,-38}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={65,-29})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt1
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-66,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-63,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt2
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-46,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-43,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt3
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-26,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-23,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt4
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={-6,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={-3,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt5
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={14,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={17,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt6
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={34,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={37,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt7
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={54,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={57,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt8
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={74,-72}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=90,
        origin={77,-49})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt9
    annotation (Placement(
        transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-74,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={-75,57})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt10
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={-54,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={-55,57})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt11
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={6,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={5,57})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt12
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={26,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={25,57})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt13
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={46,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={45,57})));
  BuildingSystems.Interfaces.Angle_degInput angleDegTilt14
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=270,
        origin={66,70}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=270,
        origin={65,57})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziRoof1
    annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-106,-8}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,-21})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilRoof1
    annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-106,-2}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,-15})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilRoof2
    annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-106,10}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,21})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziRoof2
    annotation (
      Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-106,4}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,15})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade1
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-82,56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,51})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade1
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-82,60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade2
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-62,60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-61,45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade2
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-62,56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-61,51})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade3
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-2,56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-1,51})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade3
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={-2,60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-1,45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade4
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={18,56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={19,51})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade4
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={18,60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={19,45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade5
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={38,56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={39,51})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade5
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={38,60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={39,45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade6
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={58,56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={59,51})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade6
    annotation (
      Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=180,
        origin={58,60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={59,45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade7
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-58,-56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade7
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-58,-60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-81,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade8
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-38,-60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-61,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade8
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-38,-56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-61,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade9
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-18,-60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-41,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade9
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={-18,-56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-41,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade10
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={2,-60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-21,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade10
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={2,-56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-21,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade11
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={22,-60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-1,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade11
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={22,-56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={-1,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade12
    annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={42,-60}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={19,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade12
     annotation (
      Placement(transformation(
        extent={{4,-4},{-4,4}},
        rotation=180,
        origin={42,-56}), iconTransformation(
        extent={{-3,-3},{3,3}},
        rotation=180,
        origin={19,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade13
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=180,origin={62,-60}),
      iconTransformation(extent={{-3,-3},{3,3}},rotation=180,origin={39,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade13
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=180,origin={62,-56}),
      iconTransformation(extent={{-3,-3},{3,3}},rotation=180,origin={39,-45})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegTilFacade14
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=180,origin={82,-60}),
      iconTransformation(extent={{-3,-3},{3,3}},rotation=180,origin={59,-39})));
  BuildingSystems.Interfaces.Angle_degOutput angleDegAziFacade14
    annotation (Placement(transformation(extent={{4,-4},{-4,4}},rotation=180,origin={82,-56}),
      iconTransformation(extent={{-3,-3},{3,3}},rotation=180,origin={59,-45})));
  BuildingSystems.Interfaces.PowerOutput PGen
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},rotation=0,origin={76,0}),
      iconTransformation(extent={{80,4},{86,10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(
    y=pvFacadeNorth1.PField
    + pvFacadeNorth2.PField
    + pvFacadeNorth3.PField
    + pvFacadeNorth4.PField
    + pvFacadeNorth5.PField
    + pvFacadeNorth6.PField
    + pvFacadeSouth1.PField
    + pvFacadeSouth2.PField
    + pvFacadeSouth3.PField
    + pvFacadeSouth4.PField
    + pvFacadeSouth5.PField
    + pvFacadeSouth6.PField
    + pvFacadeSouth7.PField
    + pvFacadeSouth8.PField
    + pvRoofSouth1.PField
    + pvRoofSouth2.PField
    + pvRoofSouth3.PField
    + pvRoofSouth4.PField
    + pvRoofSouth5.PField
    + pvRoofSouth6.PField
    + pvRoofSouth7.PField
    + pvRoofSouth8.PField
    + pvRoofNorth1.PField
    + pvRoofNorth2.PField
    + pvRoofNorth3.PField
    + pvRoofNorth4.PField
    + pvRoofNorth5.PField
    + pvRoofNorth6.PField)
    annotation (Placement(transformation(extent={{42,-10},{62,10}})));
equation
  connect(radiationPort1, pvFacadeNorth1.radiationPort)
    annotation (Line(points={{-70,68},{-70,64},{-70,60}}, color={0,0,0}));
  connect(radiationPort2, pvFacadeNorth2.radiationPort)
    annotation (Line(points={{-50,68},{-50,68},{-50,60}}, color={0,0,0}));
  connect(radiationPort3, pvFacadeNorth3.radiationPort)
    annotation (Line(points={{10,68},{10,64},{10,60}}, color={0,0,0}));
  connect(radiationPort4, pvFacadeNorth4.radiationPort)
    annotation (Line(points={{30,68},{30,64},{30,60}}, color={0,0,0}));
  connect(radiationPort5, pvFacadeNorth5.radiationPort)
    annotation (Line(points={{50,68},{50,64},{50,60}}, color={0,0,0}));
  connect(radiationPort6, pvFacadeNorth6.radiationPort)
    annotation (Line(points={{70,68},{70,64},{70,60}}, color={0,0,0}));
  connect(pvFacadeSouth1.radiationPort, radiationPort7)
    annotation (Line(points={{-70,-60},{-70,-70}}, color={0,0,0}));
  connect(pvFacadeSouth2.radiationPort, radiationPort8)
    annotation (Line(points={{-50,-60},{-50,-70}}, color={0,0,0}));
  connect(pvFacadeSouth3.radiationPort, radiationPort13)
    annotation (Line(points={{-30,-60},{-30,-70}}, color={0,0,0}));
  connect(pvFacadeSouth4.radiationPort, radiationPort14)
    annotation (Line(points={{-10,-60},{-10,-70}}, color={0,0,0}));
  connect(pvFacadeSouth5.radiationPort, radiationPort9)
    annotation (Line(points={{10,-60},{10,-65},{10,-70}}, color={0,0,0}));
  connect(pvFacadeSouth6.radiationPort, radiationPort10)
    annotation (Line(points={{30,-60},{30,-70}}, color={0,0,0}));
  connect(pvFacadeSouth7.radiationPort, radiationPort11)
    annotation (Line(points={{50,-60},{50,-70}}, color={0,0,0}));
  connect(pvFacadeSouth8.radiationPort, radiationPort12)
    annotation (Line(points={{70,-60},{70,-65},{70,-70}}, color={0,0,0}));
  connect(radiationPort15, pvRoofSouth1.radiationPort)
    annotation (Line(points={{-70,-36},{-70,-31},{-70,-26}}, color={0,0,0}));
  connect(radiationPort16, pvRoofSouth2.radiationPort)
    annotation (Line(points={{-50,-36},{-50,-31},{-50,-26}}, color={0,0,0}));
  connect(radiationPort17, pvRoofSouth3.radiationPort)
    annotation (Line(points={{-30,-36},{-30,-31},{-30,-26}}, color={0,0,0}));
  connect(radiationPort18, pvRoofSouth4.radiationPort)
    annotation (Line(points={{-10,-36},{-10,-31},{-10,-26}}, color={0,0,0}));
  connect(radiationPort19, pvRoofSouth5.radiationPort)
    annotation (Line(points={{10,-36},{10,-31},{10,-26}}, color={0,0,0}));
  connect(radiationPort20, pvRoofSouth6.radiationPort)
    annotation (Line(points={{30,-36},{30,-26}}, color={0,0,0}));
  connect(radiationPort21, pvRoofSouth7.radiationPort)
    annotation (Line(points={{50,-36},{50,-31},{50,-26}}, color={0,0,0}));
  connect(radiationPort22, pvRoofSouth8.radiationPort)
    annotation (Line(points={{70,-36},{70,-31},{70,-26}}, color={0,0,0}));
  connect(radiationPort23, pvRoofNorth1.radiationPort)
    annotation (Line(points={{-70,34},{-70,30},{-70,26}}, color={0,0,0}));
  connect(pvRoofNorth2.radiationPort, radiationPort24)
    annotation (Line(points={{-50,26},{-50,30},{-50,34}}, color={0,0,0}));
  connect(pvRoofNorth3.radiationPort, radiationPort27)
    annotation (Line(points={{10,26},{10,30},{10,34}}, color={0,0,0}));
  connect(pvRoofNorth4.radiationPort, radiationPort28)
    annotation (Line(points={{30,26},{30,30},{30,34}}, color={0,0,0}));
  connect(pvRoofNorth5.radiationPort, radiationPort29)
    annotation (Line(points={{50,26},{50,34}}, color={0,0,0}));
  connect(pvRoofNorth6.radiationPort, radiationPort30)
    annotation (Line(points={{70,26},{70,26},{70,34}}, color={0,0,0}));
  connect(pvFacadeNorth1.TAmb, TAmb1)
    annotation (Line(points={{-68,60},{-66,60},{-66,70}}, color={0,0,127}));
  connect(pvFacadeNorth2.TAmb, TAmb2)
    annotation (Line(points={{-48,60},{-46,60},{-46,70}}, color={0,0,127}));
  connect(pvFacadeNorth3.TAmb, TAmb3)
    annotation (Line(points={{12,60},{14,60},{14,70}}, color={0,0,127}));
  connect(pvFacadeNorth4.TAmb, TAmb4)
    annotation (Line(points={{32,60},{34,60},{34,70}}, color={0,0,127}));
  connect(TAmb5, pvFacadeNorth5.TAmb) annotation (Line(points={{54,70},{54,70},{
          54,60},{52,60}}, color={0,0,127}));
  connect(TAmb6, pvFacadeNorth6.TAmb) annotation (Line(points={{74,70},{74,70},{
          74,60},{72,60}}, color={0,0,127}));
  connect(pvRoofNorth1.TAmb, TAmb7)
    annotation (Line(points={{-68,26},{-66,26},{-66,36}}, color={0,0,127}));
  connect(pvRoofNorth2.TAmb, TAmb8)
    annotation (Line(points={{-48,26},{-46,26},{-46,36}}, color={0,0,127}));
  connect(pvRoofNorth3.TAmb, TAmb9)
    annotation (Line(points={{12,26},{14,26},{14,36}}, color={0,0,127}));
  connect(pvRoofNorth4.TAmb, TAmb10)
    annotation (Line(points={{32,26},{34,26},{34,36}}, color={0,0,127}));
  connect(pvRoofNorth5.TAmb, TAmb11)
    annotation (Line(points={{52,26},{54,26},{54,36}}, color={0,0,127}));
  connect(pvRoofNorth6.TAmb, TAmb12)
    annotation (Line(points={{72,26},{74,26},{74,36}}, color={0,0,127}));
  connect(TAmb21, pvRoofSouth1.TAmb) annotation (Line(points={{-74,-38},{-74,-38},
          {-74,-26},{-72,-26}}, color={0,0,127}));
  connect(TAmb22, pvRoofSouth2.TAmb) annotation (Line(points={{-54,-38},{-54,-38},
          {-54,-26},{-52,-26}}, color={0,0,127}));
  connect(TAmb23, pvRoofSouth3.TAmb) annotation (Line(points={{-34,-38},{-34,-38},
          {-34,-26},{-32,-26}}, color={0,0,127}));
  connect(TAmb24, pvRoofSouth4.TAmb) annotation (Line(points={{-14,-38},{-14,-38},
          {-14,-26},{-12,-26}}, color={0,0,127}));
  connect(TAmb25, pvRoofSouth5.TAmb)
    annotation (Line(points={{6,-38},{6,-26},{8,-26}}, color={0,0,127}));
  connect(TAmb26, pvRoofSouth6.TAmb)
    annotation (Line(points={{26,-38},{26,-26},{28,-26}}, color={0,0,127}));
  connect(TAmb27, pvRoofSouth7.TAmb)
    annotation (Line(points={{46,-38},{46,-26},{48,-26}}, color={0,0,127}));
  connect(TAmb28, pvRoofSouth8.TAmb) annotation (Line(points={{66,-38},{66,-38},
          {66,-26},{68,-26}}, color={0,0,127}));
  connect(TAmb13, pvFacadeSouth1.TAmb)
    annotation (Line(points={{-74,-72},{-74,-60},{-72,-60}}, color={0,0,127}));
  connect(TAmb14, pvFacadeSouth2.TAmb)
    annotation (Line(points={{-54,-72},{-54,-60},{-52,-60}}, color={0,0,127}));
  connect(TAmb15, pvFacadeSouth3.TAmb)
    annotation (Line(points={{-34,-72},{-34,-60},{-32,-60}}, color={0,0,127}));
  connect(TAmb16, pvFacadeSouth4.TAmb)
    annotation (Line(points={{-14,-72},{-14,-60},{-12,-60}}, color={0,0,127}));
  connect(TAmb17, pvFacadeSouth5.TAmb)
    annotation (Line(points={{6,-72},{6,-60},{8,-60}}, color={0,0,127}));
  connect(TAmb18, pvFacadeSouth6.TAmb)
    annotation (Line(points={{26,-72},{26,-60},{28,-60}}, color={0,0,127}));
  connect(TAmb19, pvFacadeSouth7.TAmb)
    annotation (Line(points={{46,-72},{46,-60},{48,-60}}, color={0,0,127}));
  connect(TAmb20, pvFacadeSouth8.TAmb)
    annotation (Line(points={{66,-72},{66,-60},{68,-60}}, color={0,0,127}));
  connect(pvFacadeSouth1.angleDegTil_in, angleDegTilt1) annotation (Line(points=
         {{-68,-60},{-68,-60},{-66,-60},{-66,-72}}, color={0,0,127}));
  connect(angleDegTilt2, pvFacadeSouth2.angleDegTil_in)
    annotation (Line(points={{-46,-72},{-46,-60},{-48,-60}}, color={0,0,127}));
  connect(angleDegTilt3, pvFacadeSouth3.angleDegTil_in)
    annotation (Line(points={{-26,-72},{-26,-60},{-28,-60}}, color={0,0,127}));
  connect(angleDegTilt4, pvFacadeSouth4.angleDegTil_in)
    annotation (Line(points={{-6,-72},{-6,-60},{-8,-60}}, color={0,0,127}));
  connect(angleDegTilt5, pvFacadeSouth5.angleDegTil_in)
    annotation (Line(points={{14,-72},{14,-60},{12,-60}}, color={0,0,127}));
  connect(angleDegTilt8, pvFacadeSouth8.angleDegTil_in)
    annotation (Line(points={{74,-72},{74,-60},{72,-60}}, color={0,0,127}));
  connect(angleDegTilt7, pvFacadeSouth7.angleDegTil_in) annotation (Line(points=
         {{54,-72},{54,-72},{54,-60},{52,-60}}, color={0,0,127}));
  connect(angleDegTilt6, pvFacadeSouth6.angleDegTil_in) annotation (Line(points=
         {{34,-72},{34,-72},{34,-60},{32,-60}}, color={0,0,127}));
  connect(angleDegTilt9, pvFacadeNorth1.angleDegTil_in)
    annotation (Line(points={{-74,70},{-74,60},{-72,60}}, color={0,0,127}));
  connect(angleDegTilt10, pvFacadeNorth2.angleDegTil_in)
    annotation (Line(points={{-54,70},{-54,60},{-52,60}}, color={0,0,127}));
  connect(angleDegTilt11, pvFacadeNorth3.angleDegTil_in)
    annotation (Line(points={{6,70},{6,60},{8,60}}, color={0,0,127}));
  connect(angleDegTilt12, pvFacadeNorth4.angleDegTil_in)
    annotation (Line(points={{26,70},{26,60},{28,60}}, color={0,0,127}));
  connect(angleDegTilt13, pvFacadeNorth5.angleDegTil_in)
    annotation (Line(points={{46,70},{46,60},{48,60}}, color={0,0,127}));
  connect(angleDegTilt14, pvFacadeNorth6.angleDegTil_in)
    annotation (Line(points={{66,70},{66,60},{68,60}}, color={0,0,127}));
  connect(angleDegAziRoof1, pvRoofSouth1.angleDegAzi) annotation (Line(points={{
          -106,-8},{-84,-8},{-62,-8},{-62,-24},{-64,-24}}, color={0,0,127}));
  connect(angleDegTilRoof1, pvRoofSouth1.angleDegTil) annotation (Line(points={{
          -106,-2},{-106,-2},{-62,-2},{-62,-26},{-64,-26}}, color={0,0,127}));
  connect(angleDegTilRoof2, pvRoofNorth1.angleDegTil) annotation (Line(points={{
          -106,10},{-80,10},{-80,26},{-76,26}}, color={0,0,127}));
  connect(angleDegAziRoof2, pvRoofNorth1.angleDegAzi) annotation (Line(points={{
          -106,4},{-80,4},{-80,24},{-76,24}}, color={0,0,127}));
  connect(angleDegTilFacade1, pvFacadeNorth1.angleDegTil)
    annotation (Line(points={{-82,60},{-82,60},{-76,60}}, color={0,0,127}));
  connect(angleDegAziFacade1, pvFacadeNorth1.angleDegAzi)
    annotation (Line(points={{-82,56},{-82,58},{-76,58}}, color={0,0,127}));
  connect(angleDegTilFacade2, pvFacadeNorth2.angleDegTil)
    annotation (Line(points={{-62,60},{-59,60},{-56,60}}, color={0,0,127}));
  connect(angleDegAziFacade2, pvFacadeNorth2.angleDegAzi) annotation (Line(
        points={{-62,56},{-60,56},{-56,56},{-56,58}}, color={0,0,127}));
  connect(angleDegTilFacade3, pvFacadeNorth3.angleDegTil)
    annotation (Line(points={{-2,60},{1,60},{4,60}}, color={0,0,127}));
  connect(angleDegAziFacade3, pvFacadeNorth3.angleDegAzi)
    annotation (Line(points={{-2,56},{2,56},{2,58},{4,58}}, color={0,0,127}));
  connect(angleDegTilFacade4, pvFacadeNorth4.angleDegTil)
    annotation (Line(points={{18,60},{21,60},{24,60}}, color={0,0,127}));
  connect(angleDegAziFacade4, pvFacadeNorth4.angleDegAzi) annotation (Line(
        points={{18,56},{22,56},{22,58},{24,58}}, color={0,0,127}));
  connect(angleDegTilFacade5, pvFacadeNorth5.angleDegTil)
    annotation (Line(points={{38,60},{41,60},{44,60}}, color={0,0,127}));
  connect(angleDegAziFacade5, pvFacadeNorth5.angleDegAzi) annotation (Line(
        points={{38,56},{42,56},{42,58},{44,58}}, color={0,0,127}));
  connect(angleDegTilFacade6, pvFacadeNorth6.angleDegTil)
    annotation (Line(points={{58,60},{61,60},{64,60}}, color={0,0,127}));
  connect(angleDegAziFacade6, pvFacadeNorth6.angleDegAzi) annotation (Line(
        points={{58,56},{62,56},{62,58},{64,58}}, color={0,0,127}));
  connect(pvFacadeSouth1.angleDegTil, angleDegTilFacade7)
    annotation (Line(points={{-64,-60},{-62,-60},{-58,-60}}, color={0,0,127}));
  connect(pvFacadeSouth1.angleDegAzi, angleDegAziFacade7) annotation (Line(
        points={{-64,-58},{-64,-58},{-64,-56},{-58,-56}}, color={0,0,127}));
  connect(pvFacadeSouth2.angleDegAzi, angleDegAziFacade8)
    annotation (Line(points={{-44,-58},{-44,-56},{-38,-56}}, color={0,0,127}));
  connect(pvFacadeSouth2.angleDegTil, angleDegTilFacade8)
    annotation (Line(points={{-44,-60},{-38,-60}}, color={0,0,127}));
  connect(pvFacadeSouth3.angleDegAzi, angleDegAziFacade9)
    annotation (Line(points={{-24,-58},{-24,-56},{-18,-56}}, color={0,0,127}));
  connect(pvFacadeSouth3.angleDegTil, angleDegTilFacade9)
    annotation (Line(points={{-24,-60},{-18,-60}}, color={0,0,127}));
  connect(pvFacadeSouth4.angleDegAzi, angleDegAziFacade10) annotation (Line(
        points={{-4,-58},{-4,-58},{-4,-56},{2,-56}}, color={0,0,127}));
  connect(pvFacadeSouth4.angleDegTil, angleDegTilFacade10)
    annotation (Line(points={{-4,-60},{2,-60}}, color={0,0,127}));
  connect(pvFacadeSouth5.angleDegTil, angleDegTilFacade11)
    annotation (Line(points={{16,-60},{22,-60}}, color={0,0,127}));
  connect(pvFacadeSouth5.angleDegAzi, angleDegAziFacade11)
    annotation (Line(points={{16,-58},{16,-56},{22,-56}}, color={0,0,127}));
  connect(pvFacadeSouth6.angleDegAzi, angleDegAziFacade12)
    annotation (Line(points={{36,-58},{36,-56},{42,-56}}, color={0,0,127}));
  connect(pvFacadeSouth6.angleDegTil, angleDegTilFacade12)
    annotation (Line(points={{36,-60},{42,-60}}, color={0,0,127}));
  connect(pvFacadeSouth7.angleDegAzi, angleDegAziFacade13)
    annotation (Line(points={{56,-58},{56,-56},{62,-56}}, color={0,0,127}));
  connect(pvFacadeSouth7.angleDegTil, angleDegTilFacade13)
    annotation (Line(points={{56,-60},{62,-60}}, color={0,0,127}));
  connect(pvFacadeSouth8.angleDegTil, angleDegTilFacade14)
    annotation (Line(points={{76,-60},{82,-60}}, color={0,0,127}));
  connect(pvFacadeSouth8.angleDegAzi, angleDegAziFacade14)
    annotation (Line(points={{76,-58},{76,-56},{82,-56}}, color={0,0,127}));

  connect(realExpression.y, PGen)
    annotation (Line(points={{63,0},{76,0}}, color={0,0,127}));
  annotation (experiment(StopTime=3600),
  Diagram(coordinateSystem(initialScale=0.1)),
  Icon(coordinateSystem(initialScale=0.1),
  graphics={Bitmap(extent={{-98,-54},{100,62}},
  fileName="modelica://RooftopModels/Resources/Images/PhotovoltaicSystem/PhotovoltaicSystem.PNG")}),
Documentation(revisions="<html>
<ul>
<li>
April 9, 2017 by Christoph Nytsch-Geusen:<br/>
First implementation.
</li>
</ul>
</html>", info="<html>
<p>
Model for the photovoltaic system of the Rooftop building.
</p>
</html>"));
end PV;
