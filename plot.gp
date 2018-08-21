path = "G:/FEM Code/ShapeOptimization/results/Elastic/mast/"

set terminal pdfcairo size 20cm, 15cm
  set output path."conve.pdf"
  set grid
#  set origin 0,0
  set multiplot layout 2,2 columnsfirst

# Objective function
# j0 = system("load " .path."J0");
j0 = 0.0529616;
plot path."out.dat" u ($1/j0) w l t "J/J0" lw 3
unset format
#L
plot path."out.dat" u 2 w l t "Augmented Lagrangian"  lw 3

# Constraint
# constr = system("cat ".path."constrtarget");
constr = 0.123358;
plot path."out.dat" u 3 w l t "V" lw 3, path."out.dat" u (constr + 0*$3) w l t "ConstrTarget"  lw 3


unset logscale
plot path."out.dat" u 4 w l t "Lagrange multiplier"  lw 3
unset multiplot
set terminal pdfcairo size 20cm, 15cm

