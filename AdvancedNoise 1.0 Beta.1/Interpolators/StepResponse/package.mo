within AdvancedNoise.Interpolators;
package StepResponse "A generic filter using a tabulated step response"


  extends Utilities.Interfaces.PartialInterpolatorWithKernel(
    continuous =             true,
    smoothness =             0,
    suggestedSamplePeriod =  (max(T)-min(T)) / (size(T,1)-1),
    nPast =                  integer(max(T) / suggestedSamplePeriod),
    nFuture =               -integer(min(T) / suggestedSamplePeriod),
    varianceFactor =         trapz(T, kernelVariance(T)) / suggestedSamplePeriod);

  //t = linspace(0,0.2,101); step = Noise.Interpolators.FirstOrder.kernel(t); plotArray(cat(1,Modelica.Math.Vectors.reverse(-t),t),cat(1,Modelica.Math.Vectors.reverse(-step),step))
  constant Real T[:] =      linspace(0, 0.2, 101) "Time vector";
  constant Real step[:] =   FirstOrder.kernel(T) "Step response data";
  constant Real dstep[:] =  cat(1, {(step[2]-step[1])/(T[2]-T[1])}, (step[3:size(T,1)] - step[1:size(T,1)-2]) ./ (T[3:size(T,1)] - T[1:size(T,1)-2]), {(step[end]-step[end-1])/(T[end]-T[end-1])});


  redeclare function extends kernel "Kernel for a tabulated step response"
  algorithm
    if     t <= T[1] then
      h := step[1];
    elseif t >= T[end] then
      h := step[end];
    else
      h := Modelica.Math.Vectors.interpolate(T, step, t);
    end if;
    annotation(Inline=true);
  end kernel;


  redeclare function extends der_kernel_offset
  "Derivative of kernel for a tabulated step response"
  algorithm
    if     t <= T[1] then
      h := 0;
    elseif t >= T[end] then
      h := 0;
    else
      h := Modelica.Math.Vectors.interpolate(T, dstep, t);
    end if;
    annotation(Inline=true);
  end der_kernel_offset;


annotation (Icon(graphics={
                  Line(
      points={{-90,-48},{-22,-48},{-22,-48},{6,46},{88,46}},
      color={0,0,0},
      smooth=Smooth.Bezier)}), Documentation(revisions="<html>
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
         A. Kl&ouml;ckner, F. v.d. Linden, D. Zimmer, M. Otter.<br>
         <a href=\"http://www.dlr.de/rmc/sr/en\">DLR Institute of System Dynamics and Control</a>
</td></tr></table>
</td></tr>

</table>
</p>
</html>"));
end StepResponse;
