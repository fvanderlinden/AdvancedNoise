within AdvancedNoise.Examples;
model Correlations
  extends Modelica.Icons.Example;

  Sources.TimeBasedNoise noise1(
    samplePeriod=0.01,
    y_min=0,
    y_max=1,
    useAutomaticLocalSeed=false,
    fixedLocalSeed=11)
    annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
  inner Modelica_Noise.Blocks.Noise.GlobalSeed globalSeed
    annotation (Placement(transformation(extent={{60,60},{80,80}})));
  Sources.TimeBasedNoise noise2(
    samplePeriod=0.01,
    y_min=0,
    y_max=1,
    useAutomaticLocalSeed=false)
    annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
  Statistics.CorrelationTest crossCorrelationTest
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  Sources.TimeBasedNoise noise3(
    samplePeriod=0.01,
    y_min=0,
    y_max=1,
    useAutomaticLocalSeed=false)
    annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
  Statistics.CorrelationTest autoCorrelationTest(correlation(delta_t=0.02))
    annotation (Placement(transformation(extent={{-20,0},{0,20}})));
equation
  connect(crossCorrelationTest.u1, noise1.y) annotation (Line(
      points={{-22,56},{-40,56},{-40,70},{-59,70}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(crossCorrelationTest.u2, noise2.y) annotation (Line(
      points={{-22,44},{-40,44},{-40,30},{-59,30}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(autoCorrelationTest.u1, noise2.y) annotation (Line(
      points={{-22,16},{-40,16},{-40,30},{-59,30}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(autoCorrelationTest.u2, noise3.y) annotation (Line(
      points={{-22,4},{-40,4},{-40,-10},{-59,-10}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Documentation(revisions="<html>
<p>
<table border=1 cellspacing=0 cellpadding=2>
<tr><th>Date</th> <th align=\"left\">Description</th></tr>

<tr><td valign=\"top\"> Sep. 4, 2015 </td>
    <td valign=\"top\"> 

<table border=0>
<tr><td valign=\"top\">
         <img src=\"modelica://AdvancedNoise/Resources/Images/General/dlr_logo.png\">
</td><td valign=\"bottom\"> 
         Initial version implemented by
         A. Kl&ouml;ckner, F. v.d. Linden, D. Zimmer, M. Otter.<br>
         <a href=\"http://www.dlr.de/rmc/sr/en\">DLR Institute of System Dynamics and Control</a>
</td></tr></table>
</td></tr>

</table>
</p>
</html>", info="<html>
<p>This example demonstrates the auto and cross correlation using different seeds.</p>
</html>"));
end Correlations;
