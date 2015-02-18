within Modelica_Noise.Math.TruncatedDistributions.Uniform;
function density
  "Density of truncated uniform distribution (= identical to uniform distribution)"
  extends Modelica_Noise.Math.TruncatedDistributions.Interfaces.partialDensity;
algorithm
  y := Modelica_Noise.Math.Distributions.Uniform.density(u,u_min,u_max);

  annotation(Inline=true, Documentation(info="<html>
<p>
The truncated uniform distribution is identical to the uniform distribution.
For details about function density(..), see therefore
<a href=\"modelica://Modelica_Noise.Math.Distributions.Uniform.density\">Math.Distributions.Uniform.density</a>.
</p>
</html>", revisions="<html>
<p>
<table border=1 cellspacing=0 cellpadding=2>
<tr><th>Date</th> <th align=\"left\">Description</th></tr>

<tr><td valign=\"top\"> Feb. 18, 2015 </td>
    <td valign=\"top\"> 

<table border=0>
<tr><td valign=\"top\">
         <img src=\"modelica://Modelica_Noise/Resources/Images/Blocks/Noise/dlr_logo.png\">
</td><td valign=\"bottom\"> 
         Initial version implemented by
         A. Kl�ckner, F. v.d. Linden, D. Zimmer, M. Otter.<br>
         <a href=\"http://www.dlr.de/rmc/sr/en\">DLR Institute of System Dynamics and Control</a>
</td></tr></table>
</td></tr>

</table>
</p>
</html>"));
end density;
