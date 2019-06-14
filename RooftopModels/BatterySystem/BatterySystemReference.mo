within RooftopModels.BatterySystem;
model BatterySystemReference
  "Battery system of the Rooftop building"
  extends Modelica.Icons.Example;

  BuildingSystems.Climate.WeatherData.WeatherDataReader weaDat(
    redeclare block WeatherData = BuildingSystems.Climate.WeatherDataMeteonorm.Germany_Berlin_Meteonorm_ASCII)
    annotation (Placement(transformation(extent={{40,68},{52,80}})));
  RooftopModels.PhotovoltaicSystem.PV pvSystem(
    angleDegAziBuilding=30.0)
    annotation (Placement(transformation(extent={{76,-108},{278,94}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation1(
  rhoAmb=0.2,
  angleDegL=0.0)
    annotation (Placement(transformation(extent={{94,62},{106,74}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation2(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{114,62},{126,74}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation3(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{174,62},{186,74}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation4(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{196,62},{208,74}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation5(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{216,62},{228,74}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation6(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{236,62},{248,74}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation7(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{88,-82},{100,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation8(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{110,-82},{122,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation9(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{170,-82},{182,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation10(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{190,-82},{202,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation11(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{210,-82},{222,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation12(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{230,-82},{242,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation13(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{130,-82},{142,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation14(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{150,-82},{162,-70}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation15(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{82,28},{94,40}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky radiation16(
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{72,-48},{84,-36}})));
  Modelica.Blocks.Math.Max filter1
    annotation (Placement(transformation(extent={{284,52},{272,64}})));
  Modelica.Blocks.Math.Max filter2
    annotation (Placement(transformation(extent={{284,-70},{272,-58}})));
  BuildingSystems.Technologies.ElectricalStorages.BatterySimple battery(
    redeclare BuildingSystems.Technologies.ElectricalStorages.Data.LithiumIon.LithiumIonViessmann batteryData,
    nBat=2)
    annotation (Placement(transformation(extent={{262,-10},{282,10}})));
  Modelica.Blocks.Math.Gain load(k=3000/1000)
    annotation (Placement(transformation(extent={{308,10},{298,20}})));
  BuildingSystems.BoundaryConditions.LoadProfiles.Electrical.VDEW_H0_NRW_Year vDEW_H0_NRW_Year
    annotation (Placement(transformation(extent={{324,10},{314,20}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{292,-6},{280,6}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiatonNorth1AxisTracked(
    OneAxisTracking=true,
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{316,56},{328,68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiatonSouth1AxisTracked(
    OneAxisTracking=true,
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{334,-62},{346,-50}})));
  Modelica.Blocks.Sources.Constant const1(
    k=0)
    annotation (Placement(transformation(extent={{298,50},{290,58}})));
  Modelica.Blocks.Sources.Constant const2(
    k=0)
    annotation (Placement(transformation(extent={{298,-72},{290,-64}})));
  Modelica.Blocks.Sources.Constant const3(
    k=180.0+30.0)
    annotation (Placement(transformation(extent={{326,44},{318,52}})));
  Modelica.Blocks.Sources.Constant const4(
    k=30.0)
    annotation (Placement(transformation(extent={{342,-74},{334,-66}})));
  Modelica.Blocks.Sources.Constant elHeatPump(k=0)
    annotation (Placement(transformation(extent={{324,-24},{314,-14}})));
equation
  connect(radiation1.radiationPort,pvSystem. radiationPort1) annotation (Line(
        points={{104.8,67.88},{107.31,67.88},{107.31,50.57}}, color={0,0,0}));
  connect(radiation2.radiationPort,pvSystem. radiationPort2) annotation (Line(
        points={{124.8,67.88},{127.51,67.88},{127.51,50.57}}, color={0,0,0}));
  connect(radiation3.radiationPort,pvSystem. radiationPort3) annotation (Line(
        points={{184.8,67.88},{188.11,67.88},{188.11,50.57}},color={0,0,0}));
  connect(radiation4.radiationPort,pvSystem. radiationPort4) annotation (Line(
        points={{206.8,67.88},{208.31,67.88},{208.31,50.57}},
                                                           color={0,0,0}));
  connect(radiation5.radiationPort,pvSystem. radiationPort5) annotation (Line(
        points={{226.8,67.88},{228.51,67.88},{228.51,50.57}},
                                                           color={0,0,0}));
  connect(radiation6.radiationPort,pvSystem. radiationPort6) annotation (Line(
        points={{246.8,67.88},{248.71,67.88},{248.71,50.57}},
                                                           color={0,0,0}));
  connect(radiation7.radiationPort,pvSystem. radiationPort7) annotation (Line(
        points={{98.8,-76.12},{107.31,-76.12},{107.31,-56.49}},  color={0,0,0}));
  connect(radiation8.radiationPort,pvSystem. radiationPort8) annotation (Line(
        points={{120.8,-76.12},{127.51,-76.12},{127.51,-56.49}}, color={0,0,0}));
  connect(radiation13.radiationPort,pvSystem. radiationPort13) annotation (
      Line(points={{140.8,-76.12},{147.71,-76.12},{147.71,-56.49}}, color={0,0,0}));
  connect(radiation14.radiationPort,pvSystem. radiationPort14) annotation (
      Line(points={{160.8,-76.12},{167.91,-76.12},{167.91,-56.49}}, color={0,0,0}));
  connect(radiation9.radiationPort,pvSystem. radiationPort9) annotation (Line(
        points={{180.8,-76.12},{188.11,-76.12},{188.11,-56.49}},
                                                             color={0,0,0}));
  connect(radiation10.radiationPort,pvSystem. radiationPort10) annotation (
      Line(points={{200.8,-76.12},{208.31,-76.12},{208.31,-56.49}},
                                                                 color={0,0,0}));
  connect(radiation11.radiationPort,pvSystem. radiationPort11) annotation (
      Line(points={{220.8,-76.12},{228.51,-76.12},{228.51,-56.49}},
                                                                 color={0,0,0}));
  connect(radiation12.radiationPort,pvSystem. radiationPort12) annotation (
      Line(points={{240.8,-76.12},{248.71,-76.12},{248.71,-56.49}},
                                                                 color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort15) annotation (
      Line(points={{82.8,-42.12},{107.31,-42.12},{107.31,-36.29}},  color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort16) annotation (
      Line(points={{82.8,-42.12},{127.51,-42.12},{127.51,-36.29}},  color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort17) annotation (
      Line(points={{82.8,-42.12},{147.71,-42.12},{147.71,-36.29}},  color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort18) annotation (
      Line(points={{82.8,-42.12},{167.91,-42.12},{167.91,-36.29}},  color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort19) annotation (
      Line(points={{82.8,-42.12},{188.11,-42.12},{188.11,-36.29}},color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort20) annotation (
      Line(points={{82.8,-42.12},{208.31,-42.12},{208.31,-36.29}},color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort21) annotation (
      Line(points={{82.8,-42.12},{228.51,-42.12},{228.51,-36.29}},color={0,0,0}));
  connect(radiation16.radiationPort,pvSystem. radiationPort22) annotation (
      Line(points={{82.8,-42.12},{248.71,-42.12},{248.71,-36.29}},color={0,0,0}));
  connect(radiation15.radiationPort,pvSystem. radiationPort23) annotation (
      Line(points={{92.8,33.88},{107.31,33.88},{107.31,30.37}},  color={0,0,0}));
  connect(radiation15.radiationPort,pvSystem. radiationPort24) annotation (
      Line(points={{92.8,33.88},{127.51,33.88},{127.51,30.37}},  color={0,0,0}));
  connect(radiation15.radiationPort,pvSystem. radiationPort27) annotation (
      Line(points={{92.8,33.88},{188.11,33.88},{188.11,30.37}},color={0,0,0}));
  connect(radiation15.radiationPort,pvSystem. radiationPort28) annotation (
      Line(points={{92.8,33.88},{208.31,33.88},{208.31,30.37}},color={0,0,0}));
  connect(radiation15.radiationPort,pvSystem. radiationPort29) annotation (
      Line(points={{92.8,33.88},{228.51,33.88},{228.51,30.37}},color={0,0,0}));
  connect(radiation15.radiationPort,pvSystem. radiationPort30) annotation (
      Line(points={{92.8,33.88},{248.71,33.88},{248.71,30.37}},color={0,0,0}));
  connect(weaDat.TAirRef, pvSystem.TAmb1) annotation (Line(points={{41.8,67.4},{
          113.37,67.4},{113.37,50.57}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb2) annotation (Line(points={{41.8,67.4},{
          133.57,67.4},{133.57,50.57}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb3) annotation (Line(points={{41.8,67.4},{
          194.17,67.4},{194.17,50.57}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb4) annotation (Line(points={{41.8,67.4},{
          214.37,67.4},{214.37,50.57}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb5) annotation (Line(points={{41.8,67.4},{
          234.57,67.4},{234.57,50.57}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb6) annotation (Line(points={{41.8,67.4},{
          254.77,67.4},{254.77,50.57}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb7) annotation (Line(points={{41.8,67.4},{
          113.37,67.4},{113.37,30.37}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb8) annotation (Line(points={{41.8,67.4},{
          133.57,67.4},{133.57,30.37}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb9) annotation (Line(points={{41.8,67.4},{
          194.17,67.4},{194.17,30.37}},  color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb10) annotation (Line(points={{41.8,67.4},
          {214,67.4},{214,30.37},{214.37,30.37}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb11) annotation (Line(points={{41.8,67.4},
          {234.57,67.4},{234.57,30.37}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb12) annotation (Line(points={{41.8,67.4},
          {254.77,67.4},{254.77,30.37}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb13) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{101.25,-92},{101.25,-56.49}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb14) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{122,-92},{122,-74},{121.45,-74},{121.45,-56.49}},
        color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb15) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{141.65,-92},{141.65,-56.49}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb16) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{161.85,-92},{161.85,-56.49}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb17) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{182.05,-92},{182.05,-56.49}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb18) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{202,-92},{202,-56.49},{202.25,-56.49}}, color={0,0,
          127}));
  connect(weaDat.TAirRef, pvSystem.TAmb19) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{222.45,-92},{222.45,-56.49}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb20) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{242.65,-92},{242.65,-56.49}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb21) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{101.25,-92},{101.25,-36.29}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb22) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{121.45,-92},{121.45,-36.29}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb23) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{141.65,-92},{141.65,-36.29}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb24) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{161.85,-92},{161.85,-36.29}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb25) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{182.05,-92},{182.05,-36.29}}, color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb26) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{202,-92},{202,-64},{202.25,-64},{202.25,-36.29}},
        color={0,0,127}));
  connect(weaDat.TAirRef, pvSystem.TAmb27) annotation (Line(points={{41.8,67.4},
          {64,67.4},{64,-92},{222,-92},{222,-36.29},{222.45,-36.29}}, color={0,0,
          127}));
  connect(weaDat.TAirRef, pvSystem.TAmb28) annotation (Line(points={{41.8,67.4},
          {66,67.4},{66,-92},{244,-92},{244,-50},{242.65,-50},{242.65,-36.29}},
        color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt8) annotation (Line(points={{271.4,-64},
          {254.77,-64},{254.77,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt7) annotation (Line(points={{271.4,-64},
          {234.57,-64},{234.57,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt6) annotation (Line(points={{271.4,-64},
          {214.37,-64},{214.37,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt5) annotation (Line(points={{271.4,-64},
          {194.17,-64},{194.17,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt4) annotation (Line(points={{271.4,-64},
          {173.97,-64},{173.97,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt3) annotation (Line(points={{271.4,-64},
          {153.77,-64},{153.77,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt2) annotation (Line(points={{271.4,-64},
          {133.57,-64},{133.57,-56.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt1) annotation (Line(points={{271.4,-64},
          {113.37,-64},{113.37,-56.49}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt14) annotation (Line(points={{271.4,58},
          {242.65,58},{242.65,50.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt13) annotation (Line(points={{271.4,58},
          {222.45,58},{222.45,50.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt12) annotation (Line(points={{271.4,58},
          {202.25,58},{202.25,50.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt11) annotation (Line(points={{271.4,58},
          {182.05,58},{182.05,50.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt10) annotation (Line(points={{271.4,58},
          {121.45,58},{121.45,50.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt9) annotation (Line(points={{271.4,58},
          {101.25,58},{101.25,50.57}}, color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation1.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{97.72,79.4},{97.72,72.56}},      color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation2.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{117.72,79.4},{117.72,72.56}},      color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation3.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{177.72,79.4},{177.72,72.56}},      color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation4.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{199.72,79.4},{199.72,72.56}},      color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation5.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{219.72,79.4},{219.72,72.56}},      color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation6.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{239.72,79.4},{239.72,72.56}},      color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation1.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{100,78.2},{100,72.56}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation2.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{120,78.2},{120,72.56}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation3.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{180,78.2},{180,72.56}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation4.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{202,78.2},{202,72.56}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation5.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{222,78.2},{222,72.56}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation6.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{242,78.2},{242,72.56}},       color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation15.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{85.72,79.4},{85.72,38.56}},       color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation16.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{75.72,79.4},{75.72,-37.44}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation16.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{78,78.2},{78,-37.44}}, color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation15.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{88,78.2},{88,38.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation1.longitudeDeg0) annotation (Line(
        points={{52.6,77},{102.4,77},{102.4,72.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation2.longitudeDeg0) annotation (Line(
        points={{52.6,77},{122.4,77},{122.4,72.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation3.longitudeDeg0) annotation (Line(
        points={{52.6,77},{182.4,77},{182.4,72.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation4.longitudeDeg0) annotation (Line(
        points={{52.6,77},{204.4,77},{204.4,72.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation5.longitudeDeg0) annotation (Line(
        points={{52.6,77},{224.4,77},{224.4,72.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation6.longitudeDeg0) annotation (Line(
        points={{52.6,77},{244,77},{244,72.56},{244.4,72.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation15.longitudeDeg0) annotation (Line(
        points={{52.6,77},{90.4,77},{90.4,38.56}}, color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiation16.longitudeDeg0) annotation (Line(
        points={{52.6,77},{80.4,77},{80.4,-37.44}}, color={0,0,127}));
  connect(weaDat.latitudeDeg, radiation7.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{91.72,-68},{91.72,-71.44}},      color={0,0,
          127}));
  connect(weaDat.latitudeDeg, radiation8.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{113.72,-68},{113.72,-71.44}},      color={0,
          0,127}));
  connect(weaDat.latitudeDeg, radiation13.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{133.72,-68},{133.72,-71.44}},       color={0,
          0,127}));
  connect(weaDat.latitudeDeg, radiation14.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{153.72,-68},{153.72,-71.44}},       color={0,
          0,127}));
  connect(weaDat.latitudeDeg, radiation9.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{173.72,-68},{173.72,-71.44}},      color={0,
          0,127}));
  connect(weaDat.latitudeDeg, radiation10.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{193.72,-68},{193.72,-71.44}},       color={0,
          0,127}));
  connect(weaDat.latitudeDeg, radiation11.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{213.72,-68},{213.72,-71.44}},       color={0,
          0,127}));
  connect(weaDat.latitudeDeg, radiation12.latitudeDeg) annotation (Line(points={{52.6,
          79.4},{66,79.4},{66,-68},{233.72,-68},{233.72,-71.44}},       color={0,
          0,127}));
  connect(weaDat.longitudeDeg, radiation7.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{66,78.2},{66,-68},{94,-68},{94,-71.44}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation8.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{66,78.2},{66,-68},{116,-68},{116,-71.44}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation13.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{66,78.2},{66,-68},{136,-68},{136,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg, radiation14.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{66,78.2},{66,-68},{156,-68},{156,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg, radiation9.longitudeDeg) annotation (Line(points={{52.6,
          78.2},{66,78.2},{66,-68},{176,-68},{176,-71.44}},       color={0,0,127}));
  connect(weaDat.longitudeDeg, radiation10.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{66,78.2},{66,-68},{196,-68},{196,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg, radiation11.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{66,78.2},{66,-68},{216,-68},{216,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg, radiation12.longitudeDeg) annotation (Line(
        points={{52.6,78.2},{66,78.2},{66,-68},{236,-68},{236,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation7.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{96.4,-68},{96.4,-71.44}}, color={0,0,
          127}));
  connect(weaDat.longitudeDeg0, radiation8.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{118.4,-68},{118.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation13.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{138.4,-68},{138.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation14.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{158.4,-68},{158.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation9.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{178.4,-68},{178.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation10.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{198.4,-68},{198.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation11.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{218.4,-68},{218.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.longitudeDeg0, radiation12.longitudeDeg0) annotation (Line(
        points={{52.6,77},{66,77},{66,-68},{238.4,-68},{238.4,-71.44}}, color={0,
          0,127}));
  connect(weaDat.IrrDirHor, radiation1.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{90,67.4},{90,71.6},{95.44,71.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation2.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{110,67.4},{110,71.6},{115.44,71.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation3.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{170,67.4},{170,71.6},{175.44,71.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation4.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{192,67.4},{192,71.6},{197.44,71.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation5.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{212,67.4},{212,71.6},{217.44,71.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation6.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{232,67.4},{232,71.6},{237.44,71.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation15.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{78,67.4},{78,37.6},{83.44,37.6}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation16.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{68,67.4},{68,-38.4},{73.44,-38.4}}, color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation7.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-72},{76,-72},{76,-72.4},{89.44,-72.4}}, color={0,
          0,127}));
  connect(weaDat.IrrDirHor, radiation8.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{110,-92},{110,-72},{111.44,-72},{111.44,-72.4}},
        color={0,0,127}));
  connect(weaDat.IrrDirHor, radiation13.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{130,-92},{130,-72.4},{131.44,-72.4}}, color=
         {0,0,127}));
  connect(weaDat.IrrDirHor, radiation14.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{150,-92},{150,-72.4},{151.44,-72.4}}, color=
         {0,0,127}));
  connect(weaDat.IrrDirHor, radiation9.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{170,-92},{170,-72.4},{171.44,-72.4}}, color=
         {0,0,127}));
  connect(weaDat.IrrDirHor, radiation10.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{190,-92},{190,-72.4},{191.44,-72.4}}, color=
         {0,0,127}));
  connect(weaDat.IrrDirHor, radiation11.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{210,-92},{210,-72.4},{211.44,-72.4}}, color=
         {0,0,127}));
  connect(weaDat.IrrDirHor, radiation12.IrrDirHor) annotation (Line(points={{44.2,
          67.4},{64,67.4},{64,-92},{230,-92},{230,-72.4},{231.44,-72.4}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation1.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{90,67.4},{90,69.2},{95.44,69.2}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation2.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{110,67.4},{110,69.2},{115.44,69.2}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation3.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{170,67.4},{170,69.2},{175.44,69.2}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation4.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{192,67.4},{192,69.2},{197.44,69.2}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation5.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{212,67.4},{212,69.2},{217.44,69.2}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation6.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{232,67.4},{232,69.2},{237.44,69.2}}, color={0,0,127}));
  connect(pvSystem.angleDegAziFacade1,radiation1. angleDegAzi) annotation (
      Line(points={{95.19,44.51},{92,44.51},{92,64.4},{95.44,64.4}},     color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade1,radiation1. angleDegTil) annotation (
      Line(points={{95.19,38.45},{92,38.45},{92,66.8},{95.44,66.8}},     color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade2,radiation2. angleDegAzi) annotation (
      Line(points={{115.39,44.51},{114,44.51},{114,64.4},{115.44,64.4}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade2,radiation2. angleDegTil) annotation (
      Line(points={{115.39,38.45},{114,38.45},{114,66.8},{115.44,66.8}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade3,radiation3. angleDegAzi) annotation (
      Line(points={{175.99,44.51},{172,44.51},{172,64.4},{175.44,64.4}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade3,radiation3. angleDegTil) annotation (
      Line(points={{175.99,38.45},{172,38.45},{172,66.8},{175.44,66.8}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegAziFacade4,radiation4. angleDegAzi) annotation (
      Line(points={{196.19,44.51},{194,44.51},{194,64.4},{197.44,64.4}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade4,radiation4. angleDegTil) annotation (
      Line(points={{196.19,38.45},{194,38.45},{194,66.8},{197.44,66.8}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegAziFacade5,radiation5. angleDegAzi) annotation (
      Line(points={{216.39,44.51},{214,44.51},{214,64.4},{217.44,64.4}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade5,radiation5. angleDegTil) annotation (
      Line(points={{216.39,38.45},{214,38.45},{214,66.8},{217.44,66.8}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegAziFacade6,radiation6. angleDegAzi) annotation (
      Line(points={{236.59,44.51},{234,44.51},{234,64.4},{237.44,64.4}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade6,radiation6. angleDegTil) annotation (
      Line(points={{236.59,38.45},{234,38.45},{234,66.8},{237.44,66.8}},
                                                                     color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade7,radiation7. angleDegTil) annotation (
      Line(points={{95.19,-46.39},{86,-46.39},{86,-77.2},{89.44,-77.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade7,radiation7. angleDegAzi) annotation (
      Line(points={{95.19,-52.45},{86,-52.45},{86,-79.6},{89.44,-79.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade8,radiation8. angleDegAzi) annotation (
      Line(points={{115.39,-52.45},{110,-52.45},{110,-79.6},{111.44,-79.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade8,radiation8. angleDegTil) annotation (
      Line(points={{115.39,-46.39},{110,-46.39},{110,-77.2},{111.44,-77.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade9,radiation13. angleDegAzi) annotation (
      Line(points={{135.59,-52.45},{130,-52.45},{130,-79.6},{131.44,-79.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade9,radiation13. angleDegTil) annotation (
      Line(points={{135.59,-46.39},{130,-46.39},{130,-77.2},{131.44,-77.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade10,radiation14. angleDegAzi) annotation (
      Line(points={{155.79,-52.45},{150,-52.45},{150,-79.6},{151.44,-79.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade10,radiation14. angleDegTil) annotation (
      Line(points={{155.79,-46.39},{150,-46.39},{150,-77.2},{151.44,-77.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade11,radiation9. angleDegAzi) annotation (
      Line(points={{175.99,-52.45},{170,-52.45},{170,-79.6},{171.44,-79.6}},
                                                                         color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade11,radiation9. angleDegTil) annotation (
      Line(points={{175.99,-46.39},{170,-46.39},{170,-77.2},{171.44,-77.2}},
                                                                         color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade12,radiation10. angleDegAzi) annotation (
      Line(points={{196.19,-52.45},{190,-52.45},{190,-79.6},{191.44,-79.6}},
                                                                         color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade12,radiation10. angleDegTil) annotation (
      Line(points={{196.19,-46.39},{190,-46.39},{190,-77.2},{191.44,-77.2}},
                                                                         color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade13,radiation11. angleDegAzi) annotation (
      Line(points={{216.39,-52.45},{210,-52.45},{210,-79.6},{211.44,-79.6}},
                                                                         color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade13,radiation11. angleDegTil) annotation (
      Line(points={{216.39,-46.39},{210,-46.39},{210,-77.2},{211.44,-77.2}},
                                                                         color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade14,radiation12. angleDegAzi) annotation (
      Line(points={{236.59,-52.45},{230,-52.45},{230,-79.6},{231.44,-79.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade14,radiation12. angleDegTil) annotation (
      Line(points={{236.59,-46.39},{230,-46.39},{230,-77.2},{231.44,-77.2}},
      color={0,0,127}));
  connect(pvSystem.angleDegAziRoof1,radiation16. angleDegAzi) annotation (Line(
        points={{95.19,-28.21},{68,-28.21},{68,-45.6},{73.44,-45.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilRoof1,radiation16. angleDegTil) annotation (Line(
        points={{95.19,-22.15},{68,-22.15},{68,-43.2},{73.44,-43.2}},
                   color={0,0,127}));
  connect(pvSystem.angleDegAziRoof2,radiation15. angleDegAzi) annotation (Line(
        points={{95.19,8.15},{80,8.15},{80,30.4},{83.44,30.4}},
        color={0,0,127}));
  connect(radiation15.angleDegTil,pvSystem. angleDegTilRoof2) annotation (Line(
        points={{83.44,32.8},{80,32.8},{80,14.21},{95.19,14.21}},     color={0,0,
          127}));
  connect(weaDat.IrrDifHor, radiation15.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{78,67.4},{78,35.2},{83.44,35.2}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation16.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{68,67.4},{68,-40.8},{73.44,-40.8}}, color={0,0,127}));
  connect(weaDat.IrrDifHor, radiation7.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-76},{76,-76},{76,-74.8},{89.44,-74.8}}, color={0,
          0,127}));
  connect(weaDat.IrrDifHor, radiation8.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{110,-92},{110,-74.8},{111.44,-74.8}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation13.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{130,-92},{130,-74.8},{131.44,-74.8}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation14.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{150,-92},{150,-74.8},{151.44,-74.8}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation9.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{170,-92},{170,-74.8},{171.44,-74.8}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation10.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{190,-92},{190,-74.8},{191.44,-74.8}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation11.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{210,-92},{210,-74.8},{211.44,-74.8}}, color=
         {0,0,127}));
  connect(weaDat.IrrDifHor, radiation12.IrrDifHor) annotation (Line(points={{45.4,
          67.4},{64,67.4},{64,-92},{230,-92},{230,-74.8},{231.44,-74.8}}, color=
         {0,0,127}));
  connect(pvSystem.PGen, battery.PCharge) annotation (Line(points={{260.83,0.07},
          {265.415,0.07},{265.415,0},{267,0}}, color={0,0,127}));
  connect(battery.PLoad, add.y)
    annotation (Line(points={{277,0},{279.4,0}}, color={0,0,127}));
  connect(load.u, vDEW_H0_NRW_Year.y)
    annotation (Line(points={{309,15},{313.5,15}},   color={0,0,127}));
  connect(load.y, add.u1) annotation (Line(points={{297.5,15},{296,15},{296,3.6},
          {293.2,3.6}}, color={0,0,127}));

  connect(filter1.u2, const1.y) annotation (Line(points={{285.2,54.4},{292,54.4},
          {292,54},{289.6,54}}, color={0,0,127}));
  connect(filter2.u2, const2.y) annotation (Line(points={{285.2,-67.6},{290,-67.6},
          {290,-68},{289.6,-68}}, color={0,0,127}));
  connect(filter1.u1, radiatonNorth1AxisTracked.angleDegTilTracked) annotation (
     Line(points={{285.2,61.6},{301.6,61.6},{301.6,60.8},{317.44,60.8}}, color={
          0,0,127}));
  connect(filter2.u1, radiatonSouth1AxisTracked.angleDegTilTracked) annotation (
     Line(points={{285.2,-60.4},{306.6,-60.4},{306.6,-57.2},{335.44,-57.2}},
        color={0,0,127}));
  connect(const3.y, radiatonNorth1AxisTracked.angleDegAzi) annotation (Line(
        points={{317.6,48},{314,48},{314,58.4},{317.44,58.4}}, color={0,0,127}));
  connect(const4.y, radiatonSouth1AxisTracked.angleDegAzi) annotation (Line(
        points={{333.6,-70},{330,-70},{330,-59.6},{335.44,-59.6}}, color={0,0,127}));
  connect(weaDat.latitudeDeg, radiatonNorth1AxisTracked.latitudeDeg)
    annotation (Line(points={{52.6,79.4},{52.6,86},{319.72,86},{319.72,66.56}},
        color={0,0,127}));
  connect(weaDat.longitudeDeg, radiatonNorth1AxisTracked.longitudeDeg)
    annotation (Line(points={{52.6,78.2},{52.6,86},{322,86},{322,66.56}}, color=
         {0,0,127}));
  connect(weaDat.longitudeDeg0, radiatonNorth1AxisTracked.longitudeDeg0)
    annotation (Line(points={{52.6,77},{52.6,86},{324,86},{324,76},{324.4,76},{324.4,
          66.56}}, color={0,0,127}));
  connect(weaDat.latitudeDeg, radiatonSouth1AxisTracked.latitudeDeg)
    annotation (Line(points={{52.6,79.4},{52.6,86},{337.72,86},{337.72,-51.44}},
        color={0,0,127}));
  connect(weaDat.longitudeDeg, radiatonSouth1AxisTracked.longitudeDeg)
    annotation (Line(points={{52.6,78.2},{52.6,86},{340,86},{340,-51.44}},
        color={0,0,127}));
  connect(weaDat.longitudeDeg0, radiatonSouth1AxisTracked.longitudeDeg0)
    annotation (Line(points={{52.6,77},{52.6,86},{342.4,86},{342.4,-51.44}},
        color={0,0,127}));
  connect(radiatonNorth1AxisTracked.IrrDirHor, weaDat.IrrDifHor) annotation (
      Line(points={{317.44,65.6},{356,65.6},{356,86},{30,86},{30,60},{46,60},{46,
          67.4},{45.4,67.4}},      color={0,0,127}));
  connect(radiatonNorth1AxisTracked.IrrDifHor, weaDat.IrrDifHor) annotation (
      Line(points={{317.44,63.2},{314,63.2},{314,64},{310,64},{310,86},{30,86},{
          30,60},{46,60},{46,64},{45.4,64},{45.4,67.4}},
                                           color={0,0,127}));
  connect(radiatonSouth1AxisTracked.IrrDirHor, weaDat.IrrDirHor) annotation (
      Line(points={{335.44,-52.4},{330,-52.4},{330,86},{30,86},{30,60},{46,60},{
          46,64},{44.2,64},{44.2,67.4}},
                        color={0,0,127}));
  connect(radiatonSouth1AxisTracked.IrrDifHor, weaDat.IrrDifHor) annotation (
      Line(points={{335.44,-54.8},{328,-54.8},{328,86},{30,86},{30,60},{45.4,60},
          {45.4,67.4}}, color={0,0,127}));
  connect(add.u2, elHeatPump.y) annotation (Line(points={{293.2,-3.6},{306,-3.6},
          {306,-19},{313.5,-19}}, color={0,0,127}));

  annotation(preferredView="diagram",
    experiment(StartTime=0, StopTime=31536000),
    __Dymola_Commands(file="modelica://RooftopModels/Resources/Scripts/Dymola/BatterySystem/BatterySystemReference.mos" "Simulate and plot"),
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{20,-120},{360,120}},   initialScale=0.1)),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{20,-120},{360,120}},  initialScale=0.1)),
Documentation(
info="<html>
<p>
Example that simulates the battery system case of the Rooftop building.
</p>
</html>",
revisions="<html>
<ul>
<li>
March 21, 2017, by Christoph Nytsch-Geusen:<br/>
First implementation.
</li>
</ul>
</html>"),
Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})));
end BatterySystemReference;
