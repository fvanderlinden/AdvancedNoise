within AdvancedNoise.Examples.RailIrregularities.Comparisons;
model SpaceAndTimeDomain "Compares implementation in space and time domain"
  extends FilterAndConvolution(doMinimum = true, doZero = false, doFilter = false, doTime = true);
  annotation (experiment(
      StopTime=20,
      Interval=0.01,
      Tolerance=0.001), __Dymola_experimentSetupOutput,
    Documentation(revisions="<html>
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
</html>"));
end SpaceAndTimeDomain;
