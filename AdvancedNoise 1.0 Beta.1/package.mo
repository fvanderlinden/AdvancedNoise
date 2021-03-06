within ;
package AdvancedNoise "A library with additional noise modules compatible to the Modelica standard library"
  extends Modelica.Icons.Package;










  annotation(version =                        "1.0 Beta.2",
             versionDate =                    "2015-09-01",
             versionBuild =                   1,
             uses(Modelica(version="3.2.1"), Modelica_Noise(version=
          "1.0 Beta.1")),
  Icon(graphics={            Line(
      points={{-84,0},{-54,0},{-54,40},{-24,40},{-24,-70},{6,-70},{6,80},{36,80},
            {36,-20},{66,-20},{66,60}},
      color={0,0,0},
      smooth=Smooth.None)}),
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
</html>",
   info="<html>
<p>This library contains components that can be used to efficiently generate noise which can be used in simulations. Examples of the these components are:</p>
<ul>
<li>Sample-free <a href=\"AdvancedNoise.Sources.TimeBasedNoise\">TimeBasedNoise</a> which allows for faster system simulations </li>
<li><a href=\"AdvancedNoise.Sources.SignalBasedNoise\">Signal-based noise</a> which allows a noise that is based on a system input. This signal-based noise can be for example as a source of road-irragularities.</li>
<li><a href=\"AdvancedNoise.Sources.ColoredSignalBasedNoise\">Colored noise</a></li>
</ul>
<p>The AdvancedNoise library is developed at the DLR Institute of System Dynamics and Control. </p>
<p><img src=\"modelica://AdvancedNoise/Resources/Images/General/dlr_logo.png\"/></p>
<p>The autors of the library are: <span style=\"font-family: MS Shell Dlg 2;\">A. Kl&ouml;ckner, F. v.d. Linden, D. Zimmer, M. Otter.</span></p>
<h4>Acknowledgments</h4>
<p><span style=\"font-family: MS Shell Dlg 2;\">Many thanks goes to T. Beutlich for his help in cleaing up the library.</span></p>
<h4>Literature</h4>
<ol>
<li>Kl&ouml;ckner, A., Linden, F. L. J. van der, &AMP; Zimmer, D. (2014). Noise Generation for Continuous System Simulation. In <i>Proceedings of the 10th International Modelica Conference</i> (pp. 837&ndash;846). Lund, Sweden: Link&ouml;ping University Electronic Press, Link&ouml;pings universitet. <a href=\"http://doi.org/10.3384/ecp14096837\">doi:10.3384/ecp14096837</a></li>
<li>Linden, F. L. J. van der, Kl&ouml;ckner, A., &AMP; Zimmer, D. (2015). Effects of Event-Free Noise Signals on Continuous-Time Simulation Performance. <i>IFAC-PapersOnLine</i>, <i>48</i>(1), 280&ndash;285. <a href=\"http://doi.org/10.1016/j.ifacol.2015.05.039\">doi:10.1016/j.ifacol.2015.05.039</a></li>
<li>Kl&ouml;ckner, A., Linden, F. L. J. van der, &AMP; Zimmer, D. (2015). How to Shape Noise Spectra for Continuous System Simulation. In <i>Proceedings of the 11th International Modelica Conference</i> (pp. 837&ndash;846). Versailles, France. In Press</li>
</ol>
</html>"));
end AdvancedNoise;
