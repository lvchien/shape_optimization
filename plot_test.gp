path = "~/Programming/Freefempp/shape_optimization/results/third/"

set terminal pdfcairo size 20cm, 15cm
  set output path."conve.pdf"
  set grid
#  set origin 0,0
  set multiplot layout 2,2 columnsfirst

# Objective function
# j0 = system("load " .path."J0");
plot path."out.dat" u 1 w l t "J" lw 3
unset format
#L
plot path."out.dat" u 2 w l t "Augmented Lagrangian"  lw 3

# Constraint
# constr = system("cat ".path."constrtarget");
plot path."out.dat" u 3 w l t "V" lw 3


unset logscale
plot path."out.dat" u 4 w l t "Lagrange multiplier"  lw 3
unset multiplot
set terminal pdfcairo size 20cm, 15cm

