within AdvancedNoise.Plots.Distributions;
function Discrete "Plot functions Math.Distributions.Discrete"
   import AdvancedNoise.Distributions.Discrete;
   input Integer nPoints(min=2) = 1000 "Number of evaluation points";
protected
   Real u[nPoints] = linspace(-5, 5, nPoints);
   Real u2[nPoints] = linspace(0, 1, nPoints);
   Real y1[nPoints];
   Real y2[nPoints];
   Real y3[nPoints];
algorithm
   y1 := Discrete.cumulative(u);
   y2 := Discrete.cumulative(u);
   y3 := Discrete.cumulative(u);
   plotArrays(u, [y1,y2,y3], title="Cumulative distribution functions of Discrete distribution",
              legend={"cumulative(u,-3,3)", "cumulative(u,-1,3)", "cumulative(u,1,3)"},id=2);

   y1 := Discrete.quantile(u2);
   y2 := Discrete.quantile(u2);
   y3 := Discrete.quantile(u2);
   plotArrays(u2, [y1,y2,y3], title="Inverse cumulative distribution function of Discrete distribution",
              legend={"quantile(u,-3,3)", "quantile(u,-1,3)", "quantile(u,1,3)"}, id=3);

   annotation(__Dymola_interactive = true);
end Discrete;
