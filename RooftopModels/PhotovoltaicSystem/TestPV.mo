within RooftopModels.PhotovoltaicSystem;
model TestPV
  "Photovoltaic system of the Rooftop building"
  extends Modelica.Icons.Example;
  RooftopModels.PhotovoltaicSystem.PV pvSystem
    annotation (Placement(transformation(extent={{-102,-106},{100,96}})));
  BuildingSystems.Climate.WeatherData.WeatherDataReader weatherData(
    redeclare block WeatherData = BuildingSystems.Climate.WeatherDataMeteonorm.Germany_Berlin_Meteonorm_ASCII)
    "time IrrDir IrrDif TAirAmb"
    annotation (Placement(transformation(extent={{-148,112},{-132,128}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation1(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-84,64},{-72,76}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation2(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-64,64},{-52,76}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation3(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-4,64},{8,76}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation4(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{18,64},{30,76}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation5(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{38,64},{50,76}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation6(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{58,64},{70,76}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation7(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-90,-80},{-78,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation8(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-68,-80},{-56,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation9(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-8,-80},{4,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation10(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{12,-80},{24,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation11(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{32,-80},{44,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation12(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{52,-80},{64,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation13(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-48,-80},{-36,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation14(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-28,-80},{-16,-68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation15(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-98,30},{-86,42}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiation16(rhoAmb=0.2, angleDegL=0.0)
    annotation (Placement(transformation(extent={{-110,-46},{-98,-34}})));
  Modelica.Blocks.Math.Max filter1
    annotation (Placement(transformation(extent={{96,54},{88,62}})));
  Modelica.Blocks.Math.Max filter2
    annotation (Placement(transformation(extent={{94,-64},{86,-56}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiatonNorth1AxisTracked(
    OneAxisTracking=true,
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{124,56},{136,68}})));
  BuildingSystems.Climate.SolarRadiationTransformers.SolarRadiationTransformerIsotropicSky
    radiatonSouth1AxisTracked(
    OneAxisTracking=true,
    rhoAmb=0.2,
    angleDegL=0.0)
    annotation (Placement(transformation(extent={{134,-62},{146,-50}})));
  Modelica.Blocks.Sources.Constant const1(k=0)
    annotation (Placement(transformation(extent={{112,44},{104,52}})));
  Modelica.Blocks.Sources.Constant const2(k=0)
    annotation (Placement(transformation(extent={{110,-74},{102,-66}})));
  Modelica.Blocks.Sources.Constant const3(k=180.0+30.0)
    annotation (Placement(transformation(extent={{134,44},{126,52}})));
  Modelica.Blocks.Sources.Constant const4(k=30.0)
    annotation (Placement(transformation(extent={{144,-74},{136,-66}})));
equation
  connect(radiation1.radiationPort, pvSystem.radiationPort1) annotation (Line(
        points={{-73.2,69.88},{-70.69,69.88},{-70.69,52.57}}, color={0,0,0}));
  connect(radiation2.radiationPort, pvSystem.radiationPort2) annotation (Line(
        points={{-53.2,69.88},{-50.49,69.88},{-50.49,52.57}}, color={0,0,0}));
  connect(radiation3.radiationPort, pvSystem.radiationPort3) annotation (Line(
        points={{6.8,69.88},{10.11,69.88},{10.11,52.57}}, color={0,0,0}));
  connect(radiation4.radiationPort, pvSystem.radiationPort4) annotation (Line(
        points={{28.8,69.88},{30.31,69.88},{30.31,52.57}}, color={0,0,0}));
  connect(radiation5.radiationPort, pvSystem.radiationPort5) annotation (Line(
        points={{48.8,69.88},{50.51,69.88},{50.51,52.57}}, color={0,0,0}));
  connect(radiation6.radiationPort, pvSystem.radiationPort6) annotation (Line(
        points={{68.8,69.88},{70.71,69.88},{70.71,52.57}}, color={0,0,0}));
  connect(radiation7.radiationPort, pvSystem.radiationPort7) annotation (Line(
        points={{-79.2,-74.12},{-70.69,-74.12},{-70.69,-54.49}}, color={0,0,0}));
  connect(radiation8.radiationPort, pvSystem.radiationPort8) annotation (Line(
        points={{-57.2,-74.12},{-50.49,-74.12},{-50.49,-54.49}}, color={0,0,0}));
  connect(radiation13.radiationPort, pvSystem.radiationPort13) annotation (
      Line(points={{-37.2,-74.12},{-30.29,-74.12},{-30.29,-54.49}}, color={0,0,0}));
  connect(radiation14.radiationPort, pvSystem.radiationPort14) annotation (
      Line(points={{-17.2,-74.12},{-10.09,-74.12},{-10.09,-54.49}}, color={0,0,0}));
  connect(radiation9.radiationPort, pvSystem.radiationPort9) annotation (Line(
        points={{2.8,-74.12},{10.11,-74.12},{10.11,-54.49}}, color={0,0,0}));
  connect(radiation10.radiationPort, pvSystem.radiationPort10) annotation (
      Line(points={{22.8,-74.12},{30.31,-74.12},{30.31,-54.49}}, color={0,0,0}));
  connect(radiation11.radiationPort, pvSystem.radiationPort11) annotation (
      Line(points={{42.8,-74.12},{50.51,-74.12},{50.51,-54.49}}, color={0,0,0}));
  connect(radiation12.radiationPort, pvSystem.radiationPort12) annotation (
      Line(points={{62.8,-74.12},{70.71,-74.12},{70.71,-54.49}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort15) annotation (
      Line(points={{-99.2,-40.12},{-70.69,-40.12},{-70.69,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort16) annotation (
      Line(points={{-99.2,-40.12},{-50.49,-40.12},{-50.49,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort17) annotation (
      Line(points={{-99.2,-40.12},{-30.29,-40.12},{-30.29,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort18) annotation (
      Line(points={{-99.2,-40.12},{-10.09,-40.12},{-10.09,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort19) annotation (
      Line(points={{-99.2,-40.12},{10.11,-40.12},{10.11,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort20) annotation (
      Line(points={{-99.2,-40.12},{30.31,-40.12},{30.31,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort21) annotation (
      Line(points={{-99.2,-40.12},{50.51,-40.12},{50.51,-34.29}}, color={0,0,0}));
  connect(radiation16.radiationPort, pvSystem.radiationPort22) annotation (
      Line(points={{-99.2,-40.12},{70.71,-40.12},{70.71,-34.29}}, color={0,0,0}));
  connect(radiation15.radiationPort, pvSystem.radiationPort23) annotation (
      Line(points={{-87.2,35.88},{-70.69,35.88},{-70.69,32.37}}, color={0,0,0}));
  connect(radiation15.radiationPort, pvSystem.radiationPort24) annotation (
      Line(points={{-87.2,35.88},{-50.49,35.88},{-50.49,32.37}}, color={0,0,0}));
  connect(radiation15.radiationPort, pvSystem.radiationPort27) annotation (
      Line(points={{-87.2,35.88},{10.11,35.88},{10.11,32.37}}, color={0,0,0}));
  connect(radiation15.radiationPort, pvSystem.radiationPort28) annotation (
      Line(points={{-87.2,35.88},{30.31,35.88},{30.31,32.37}}, color={0,0,0}));
  connect(radiation15.radiationPort, pvSystem.radiationPort29) annotation (
      Line(points={{-87.2,35.88},{50.51,35.88},{50.51,32.37}}, color={0,0,0}));
  connect(radiation15.radiationPort, pvSystem.radiationPort30) annotation (
      Line(points={{-87.2,35.88},{70.71,35.88},{70.71,32.37}}, color={0,0,0}));
  connect(weatherData.TAirRef, pvSystem.TAmb1) annotation (Line(points={{-115.6,100},{-64.63,
          100},{-64.63,52.57}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb2) annotation (Line(points={{-115.6,100},{-115.6,
          100},{-44.43,100},{-44.43,52.57}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb3) annotation (Line(points={{-115.6,100},{-115.6,
          100},{16.17,100},{16.17,52.57}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb4) annotation (Line(points={{-115.6,100},{-115.6,
          100},{36.37,100},{36.37,52.57}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb5) annotation (Line(points={{-115.6,100},{-115.6,
          100},{56.57,100},{56.57,52.57}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb6) annotation (Line(points={{-115.6,100},{-115.6,
          100},{76.77,100},{76.77,52.57}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb7) annotation (Line(points={{-115.6,100},{-115.6,
          100},{-64.63,100},{-64.63,32.37}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb8) annotation (Line(points={{-115.6,100},{-44.43,
          100},{-44.43,32.37}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb9) annotation (Line(points={{-115.6,100},{16.17,
          100},{16.17,32.37}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb10) annotation (Line(points={{-115.6,100},{
          -115.6,100},{36,100},{36,32.37},{36.37,32.37}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb11) annotation (Line(points={{-115.6,100},{
          -115.6,100},{56.57,100},{56.57,32.37}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb12) annotation (Line(points={{-115.6,100},{
          -115.6,100},{76.77,100},{76.77,32.37}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb13) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-76.75,-90},{-76.75,-54.49}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb14) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-56,-90},{-56,-72},{-56.55,-72},{-56.55,-54.49}},
        color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb15) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-36.35,-90},{-36.35,-54.49}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb16) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-16.15,-90},{-16.15,-54.49}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb17) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{4.05,-90},{4.05,-54.49}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb18) annotation (Line(points={{-115.6,100},{
          -115.6,100},{-114,100},{-114,-90},{24,-90},{24,-54.49},{24.25,-54.49}},
        color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb19) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{44.45,-90},{44.45,-54.49}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb20) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{64.65,-90},{64.65,-54.49}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb21) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-76.75,-90},{-76.75,-34.29}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb22) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-56.55,-90},{-56.55,-34.29}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb23) annotation (Line(points={{-115.6,100},{
          -115.6,100},{-114,100},{-114,-90},{-36.35,-90},{-36.35,-34.29}},
        color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb24) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{-16.15,-90},{-16.15,-34.29}}, color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb25) annotation (Line(points={{-115.6,100},{
          -115.6,100},{-114,100},{-114,-90},{4.05,-90},{4.05,-34.29}},
                                                                     color={0,0,
          127}));
  connect(weatherData.TAirRef, pvSystem.TAmb26) annotation (Line(points={{-115.6,100},{
          -115.6,100},{-114,100},{-114,-90},{24,-90},{24,-62},{24.25,-62},{24.25,
          -34.29}},        color={0,0,127}));
  connect(weatherData.TAirRef, pvSystem.TAmb27) annotation (Line(points={{-115.6,100},{
          -114,100},{-114,-90},{44,-90},{44,-34.29},{44.45,-34.29}}, color={0,0,
          127}));
  connect(weatherData.TAirRef, pvSystem.TAmb28) annotation (Line(points={{-115.6,100},{
          -115.6,100},{-114,100},{-114,-90},{64,-90},{64,-62},{64,-48},{64.65,-48},
          {64.65,-34.29}},      color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt8) annotation (Line(points={{85.6,-60},
          {76.77,-60},{76.77,-54.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt7) annotation (Line(points={{85.6,-60},
          {56.57,-60},{56.57,-54.49}},          color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt6) annotation (Line(points={{85.6,-60},
          {36.37,-60},{36.37,-54.49}},          color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt5) annotation (Line(points={{85.6,-60},
          {16.17,-60},{16.17,-54.49}},          color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt4) annotation (Line(points={{85.6,-60},
          {-4.03,-60},{-4.03,-54.49}}, color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt3) annotation (Line(points={{85.6,-60},
          {-24.23,-60},{-24.23,-54.49}},          color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt2) annotation (Line(points={{85.6,-60},
          {-44.43,-60},{-44.43,-54.49}},          color={0,0,127}));
  connect(filter2.y, pvSystem.angleDegTilt1) annotation (Line(points={{85.6,-60},
          {-64.63,-60},{-64.63,-54.49}},          color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt14) annotation (Line(points={{87.6,58},
          {64.65,58},{64.65,52.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt13) annotation (Line(points={{87.6,58},
          {44.45,58},{44.45,52.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt12) annotation (Line(points={{87.6,58},
          {24.25,58},{24.25,52.57}},         color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt11) annotation (Line(points={{87.6,58},
          {4.05,58},{4.05,52.57}},         color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt10) annotation (Line(points={{87.6,58},
          {-56.55,58},{-56.55,52.57}}, color={0,0,127}));
  connect(filter1.y, pvSystem.angleDegTilt9) annotation (Line(points={{87.6,58},
          {-76.75,58},{-76.75,52.57}},        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation1.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-80.28,127.2},{-80.28,74.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation2.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-60.28,127.2},{-60.28,74.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation3.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-0.28,127.2},{-0.28,74.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation4.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{21.72,127.2},{21.72,74.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation5.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{41.72,127.2},{41.72,74.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation6.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{61.72,127.2},{61.72,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation1.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-78,125.6},{-78,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation2.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-58,125.6},{-58,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation3.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{2,125.6},{2,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation4.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{24,125.6},{24,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation5.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{44,125.6},{44,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation6.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{64,125.6},{64,74.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation15.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-94.28,127.2},{-94.28,40.56}}, color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation16.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-106.28,127.2},{-106.28,-35.44}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation16.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-104,125.6},{-104,-35.44}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation15.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-92,125.6},{-92,40.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation1.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-104,124},{-75.6,124},{-75.6,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation2.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-92,124},{-55.6,124},{-55.6,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation3.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-64,124},{4.4,124},{4.4,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation4.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-52,124},{26.4,124},{26.4,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation5.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-42,124},{46.4,124},{46.4,74.56}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation6.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-34,124},{-34,124},{66,124},{66,74.56},{66.4,74.56}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation15.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-112,124},{-89.6,124},{-89.6,40.56}}, color={0,
          0,127}));
  connect(weatherData.longitudeDeg0, radiation16.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-116,124},{-101.6,124},{-101.6,-35.44}},
                                                                        color={0,
          0,127}));
  connect(weatherData.latitudeDeg, radiation7.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{-86.28,-66},{-86.28,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation8.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{-64.28,-66},{-64.28,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation13.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{-44.28,-66},{-44.28,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation14.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{-24.28,-66},{-24.28,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation9.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{-4.28,-66},{-4.28,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation10.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{15.72,-66},{15.72,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation11.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{35.72,-66},{35.72,-69.44}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiation12.latitudeDeg) annotation (Line(
        points={{-131.2,127.2},{-112,127.2},{-112,-66},{55.72,-66},{55.72,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation7.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{-84,-66},{-84,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation8.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{-62,-66},{-62,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation13.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{-42,-66},{-42,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation14.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{-22,-66},{-22,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation9.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{-2,-66},{-2,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation10.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{18,-66},{18,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation11.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,126},{-112,126},{-112,-66},{38,
          -66},{38,-69.44}}, color={0,0,127}));
  connect(weatherData.longitudeDeg, radiation12.longitudeDeg) annotation (Line(
        points={{-131.2,125.6},{-112,125.6},{-112,-66},{58,-66},{58,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation7.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-112,124},{-112,-66},{-81.6,-66},{-81.6,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation8.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-110,124},{-112,124},{-112,-66},{-59.6,-66},{-59.6,
          -69.44}}, color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation13.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-112,124},{-112,-66},{-39.6,-66},{-39.6,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation14.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-112,124},{-112,-66},{-19.6,-66},{-19.6,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation9.longitudeDeg0) annotation (Line(
        points={{-131.2,124},{-120,124},{-112,124},{-112,-66},{0.4,-66},{0.4,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation10.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-112,124},{-112,-66},{20.4,-66},{20.4,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation11.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-112,124},{-112,-66},{40.4,-66},{40.4,-69.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg0, radiation12.longitudeDeg0) annotation (
      Line(points={{-131.2,124},{-112,124},{-112,-66},{60.4,-66},{60.4,-69.44}},
        color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation1.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-131.2,120},{-88,120},{-88,73.6},{-82.56,73.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation2.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-102,120},{-68,120},{-68,73.6},{-62.56,73.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation3.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-72,120},{-8,120},{-8,74},{-6,73.6},{-2.56,73.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation4.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-58,120},{14,120},{14,73.6},{19.44,73.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation5.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-50,120},{34,120},{34,73.6},{39.44,73.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation6.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-38,120},{54,120},{54,73.6},{59.44,73.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation15.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-114,120},{-100,120},{-100,39.6},{-96.56,39.6}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation16.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-110,120},{-110,-36.4},{-108.56,-36.4}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation7.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-70.4},{-88.56,-70.4}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation8.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-68,-90},{-68,-70},{-66.56,-70},{-66.56,-70.4}},
        color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation13.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-48,-90},{-48,-70},{-48,-70},{-48,-70.4},{
          -46.56,-70.4}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation14.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-28,-90},{-28,-70},{-28,-70},{-28,-70.4},{
          -26.56,-70.4}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation9.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-8,-90},{-8,-70},{-8,-70},{-8,-70.4},{-6.56,
          -70.4}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation10.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{12,-90},{12,-70},{12,-70},{12,-70.4},{13.44,
          -70.4}}, color={0,0,127}));
  connect(weatherData.IrrDirHor, radiation11.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{32,-90},{32,-70.4},{33.44,-70.4}}, color={
          0,0,127}));
  connect(weatherData.IrrDirHor, radiation12.IrrDirHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{52,-90},{52,-70},{52,-70},{52,-70.4},{53.44,
          -70.4}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation1.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-88,120},{-88,71.2},{-82.56,71.2}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation2.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-68,120},{-68,71.2},{-62.56,71.2}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation3.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-8,120},{-8,72},{-8,72},{-8,71.2},{-2.56,71.2}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation4.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-60,120},{14,120},{14,72},{16,71.2},{19.44,71.2}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation5.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-50,120},{34,120},{34,72},{36,71.2},{39.44,71.2}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation6.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-40,120},{54,120},{54,72},{56,71.2},{59.44,71.2}}, color={0,0,127}));
  connect(pvSystem.angleDegAziFacade1, radiation1.angleDegAzi) annotation (
      Line(points={{-82.81,46.51},{-86,46.51},{-86,66.4},{-82.56,66.4}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade1, radiation1.angleDegTil) annotation (
      Line(points={{-82.81,40.45},{-86,40.45},{-86,68.8},{-82.56,68.8}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade2, radiation2.angleDegAzi) annotation (
      Line(points={{-62.61,46.51},{-64,46.51},{-64,66.4},{-62.56,66.4}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade2, radiation2.angleDegTil) annotation (
      Line(points={{-62.61,40.45},{-64,40.45},{-64,68.8},{-62.56,68.8}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade3, radiation3.angleDegAzi) annotation (
      Line(points={{-2.01,46.51},{-6,46.51},{-6,66.4},{-2.56,66.4}}, color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade3, radiation3.angleDegTil) annotation (
      Line(points={{-2.01,40.45},{-6,40.45},{-6,68.8},{-2.56,68.8}}, color={0,0,
          127}));
  connect(pvSystem.angleDegAziFacade4, radiation4.angleDegAzi) annotation (
      Line(points={{18.19,46.51},{16,46.51},{16,66.4},{19.44,66.4}}, color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade4, radiation4.angleDegTil) annotation (
      Line(points={{18.19,40.45},{16,40.45},{16,68.8},{19.44,68.8}}, color={0,0,
          127}));
  connect(pvSystem.angleDegAziFacade5, radiation5.angleDegAzi) annotation (
      Line(points={{38.39,46.51},{36,46.51},{36,66.4},{39.44,66.4}}, color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade5, radiation5.angleDegTil) annotation (
      Line(points={{38.39,40.45},{36,40.45},{36,68.8},{39.44,68.8}}, color={0,0,
          127}));
  connect(pvSystem.angleDegAziFacade6, radiation6.angleDegAzi) annotation (
      Line(points={{58.59,46.51},{56,46.51},{56,66.4},{59.44,66.4}}, color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade6, radiation6.angleDegTil) annotation (
      Line(points={{58.59,40.45},{56,40.45},{56,68.8},{59.44,68.8}}, color={0,0,
          127}));
  connect(pvSystem.angleDegTilFacade7, radiation7.angleDegTil) annotation (
      Line(points={{-82.81,-44.39},{-92,-44.39},{-92,-75.2},{-88.56,-75.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade7, radiation7.angleDegAzi) annotation (
      Line(points={{-82.81,-50.45},{-92,-50.45},{-92,-77.6},{-88.56,-77.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade8, radiation8.angleDegAzi) annotation (
      Line(points={{-62.61,-50.45},{-68,-50.45},{-68,-77.6},{-66.56,-77.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade8, radiation8.angleDegTil) annotation (
      Line(points={{-62.61,-44.39},{-68,-44.39},{-68,-75.2},{-66.56,-75.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade9, radiation13.angleDegAzi) annotation (
      Line(points={{-42.41,-50.45},{-48,-50.45},{-48,-77.6},{-46.56,-77.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade9, radiation13.angleDegTil) annotation (
      Line(points={{-42.41,-44.39},{-48,-44.39},{-48,-75.2},{-46.56,-75.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade10, radiation14.angleDegAzi) annotation (
      Line(points={{-22.21,-50.45},{-28,-50.45},{-28,-77.6},{-26.56,-77.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilFacade10, radiation14.angleDegTil) annotation (
      Line(points={{-22.21,-44.39},{-28,-44.39},{-28,-75.2},{-26.56,-75.2}},
        color={0,0,127}));
  connect(pvSystem.angleDegAziFacade11, radiation9.angleDegAzi) annotation (
      Line(points={{-2.01,-50.45},{-8,-50.45},{-8,-77.6},{-6.56,-77.6}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade11, radiation9.angleDegTil) annotation (
      Line(points={{-2.01,-44.39},{-8,-44.39},{-8,-75.2},{-6.56,-75.2}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade12, radiation10.angleDegAzi) annotation (
      Line(points={{18.19,-50.45},{12,-50.45},{12,-77.6},{13.44,-77.6}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade12, radiation10.angleDegTil) annotation (
      Line(points={{18.19,-44.39},{12,-44.39},{12,-75.2},{13.44,-75.2}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade13, radiation11.angleDegAzi) annotation (
      Line(points={{38.39,-50.45},{32,-50.45},{32,-77.6},{33.44,-77.6}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade13, radiation11.angleDegTil) annotation (
      Line(points={{38.39,-44.39},{32,-44.39},{32,-75.2},{33.44,-75.2}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziFacade14, radiation12.angleDegAzi) annotation (
      Line(points={{58.59,-50.45},{52,-50.45},{52,-77.6},{53.44,-77.6}}, color={
          0,0,127}));
  connect(pvSystem.angleDegTilFacade14, radiation12.angleDegTil) annotation (
      Line(points={{58.59,-44.39},{52,-44.39},{52,-75.2},{53.44,-75.2}}, color={
          0,0,127}));
  connect(pvSystem.angleDegAziRoof1, radiation16.angleDegAzi) annotation (Line(
        points={{-82.81,-26.21},{-110,-26.21},{-110,-44},{-110,-43.6},{-108.56,-43.6}},
        color={0,0,127}));
  connect(pvSystem.angleDegTilRoof1, radiation16.angleDegTil) annotation (Line(
        points={{-82.81,-20.15},{-82.81,-20.15},{-110,-20.15},{-110,-41.2},{-108.56,
          -41.2}}, color={0,0,127}));
  connect(pvSystem.angleDegAziRoof2, radiation15.angleDegAzi) annotation (Line(
        points={{-82.81,10.15},{-98,10.15},{-98,32},{-98,32.4},{-96.56,32.4}},
        color={0,0,127}));
  connect(radiation15.angleDegTil, pvSystem.angleDegTilRoof2) annotation (Line(
        points={{-96.56,34.8},{-98,34.8},{-98,16.21},{-82.81,16.21}}, color={0,0,
          127}));
  connect(weatherData.IrrDifHor, radiation15.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-100,120},{-100,37.2},{-96.56,37.2}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation16.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-110,120},{-110,-38.8},{-108.56,-38.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation7.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-72.8},{-88.56,-72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation8.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-68,-90},{-68,-72},{-68,-72},{-68,-72.8},{
          -66.56,-72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation13.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-48,-90},{-48,-72},{-48,-72},{-48,-72.8},{
          -46.56,-72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation14.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-28,-90},{-28,-74},{-28,-72},{-28,-72.8},{
          -26.56,-72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation9.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{-8,-90},{-8,-72},{-8,-72},{-8,-72.8},{-6.56,
          -72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation10.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{12,-90},{12,-72},{12,-72},{12,-72.8},{13.44,
          -72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation11.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{32,-90},{32,-74},{32,-72},{32,-72.8},{33.44,
          -72.8}}, color={0,0,127}));
  connect(weatherData.IrrDifHor, radiation12.IrrDifHor) annotation (Line(points={{-131.2,
          120},{-130,120},{-130,-90},{52,-90},{52,-72},{52,-72},{52,-72.8},{53.44,
          -72.8}}, color={0,0,127}));
  connect(filter1.u1, radiatonNorth1AxisTracked.angleDegTilTracked)
    annotation (Line(points={{96.8,60.4},{116,60.4},{116,60.8},{125.44,60.8}},
                                                          color={0,0,127}));
  connect(filter2.u1, radiatonSouth1AxisTracked.angleDegTilTracked)
    annotation (Line(points={{94.8,-57.6},{122,-57.6},{122,-57.2},{135.44,-57.2}},
                                                            color={0,0,127}));
  connect(filter1.u2, const1.y) annotation (Line(points={{96.8,55.6},{99.6,55.6},
          {99.6,48},{103.6,48}},  color={0,0,127}));
  connect(const2.y, filter2.u2) annotation (Line(points={{101.6,-70},{98,-70},{98,
          -62.4},{94.8,-62.4}},      color={0,0,127}));
  connect(const3.y, radiatonNorth1AxisTracked.angleDegAzi) annotation (Line(
        points={{125.6,48},{122,48},{122,58.4},{125.44,58.4}}, color={0,0,127}));
  connect(const4.y, radiatonSouth1AxisTracked.angleDegAzi) annotation (Line(
        points={{135.6,-70},{132,-70},{132,-59.6},{135.44,-59.6}}, color={0,0,127}));

  connect(weatherData.latitudeDeg, radiatonNorth1AxisTracked.latitudeDeg)
    annotation (Line(points={{-131.2,127.2},{127.72,127.2},{127.72,66.56}},
        color={0,0,127}));
  connect(weatherData.latitudeDeg, radiatonSouth1AxisTracked.latitudeDeg)
    annotation (Line(points={{-131.2,127.2},{138,127.2},{138,-51.44},{137.72,-51.44}},
        color={0,0,127}));
  connect(weatherData.longitudeDeg, radiatonNorth1AxisTracked.longitudeDeg)
    annotation (Line(points={{-131.2,125.6},{130,125.6},{130,66.56}}, color={0,0,
          127}));
  connect(weatherData.longitudeDeg, radiatonSouth1AxisTracked.longitudeDeg)
    annotation (Line(points={{-131.2,125.6},{140,125.6},{140,-51.44}}, color={0,
          0,127}));
  connect(weatherData.longitudeDeg0, radiatonNorth1AxisTracked.longitudeDeg0)
    annotation (Line(points={{-131.2,124},{132.4,124},{132.4,66.56}}, color={0,0,
          127}));
  connect(weatherData.longitudeDeg0, radiatonSouth1AxisTracked.longitudeDeg0)
    annotation (Line(points={{-131.2,124},{142.4,124},{142.4,-51.44}}, color={0,
          0,127}));
  connect(weatherData.IrrDirHor, radiatonNorth1AxisTracked.IrrDirHor) annotation (
      Line(points={{-131.2,120},{122,120},{122,65.6},{125.44,65.6}}, color={0,0,
          127}));
  connect(weatherData.IrrDirHor, radiatonSouth1AxisTracked.IrrDirHor) annotation (
      Line(points={{-131.2,120},{120,120},{120,-52.4},{135.44,-52.4}}, color={0,
          0,127}));
  connect(weatherData.IrrDifHor, radiatonSouth1AxisTracked.IrrDifHor) annotation (
      Line(points={{-131.2,120},{120,120},{120,-56},{135.44,-56},{135.44,-54.8}},
        color={0,0,127}));
  connect(weatherData.IrrDifHor, radiatonNorth1AxisTracked.IrrDifHor) annotation (
      Line(points={{-131.2,120},{122,120},{122,63.2},{125.44,63.2}}, color={0,0,
          127}));

  annotation (preferredView="diagram",
    experiment(StartTime=0, StopTime=31536000),
    Diagram(coordinateSystem(extent={{-150,-150},{150,150}}, initialScale=0.1)),
    Icon(coordinateSystem(extent={{-150,-150},{150,150}}, initialScale=0.1)),
    __Dymola_Commands(file="modelica://RooftopModels/Resources/Scripts/Dymola/PhotovoltaicSystem/TestPV.mos" "Simulate and plot"),
Documentation(revisions="<html>
<ul>
<li>
September 10, 2017 by Christoph Nytsch-Geusen:<br/>
One axis tracking for facade modules added.
</li>
<li>
April 9, 2017 by Christoph Nytsch-Geusen:<br/>
First implementation.
</li>
</ul>
</html>", info="<html>
<p>
Example that simulates the pvSystem case of the photovoltaic system of the Rooftop building.
</p>
</html>"));
end TestPV;
