path = "results/Stokes/pipe/"

set terminal pdfcairo size 20cm, 15cm
  set output path."plot.pdf"
  set multiplot
  set grid
#  set origin 0,0
  set multiplot layout 2,2 columnsfirst

#Energie dissipation
j0 = system("cat ".path."J0");
plot path."out.dat" u ($1/j0) w l t "J/J0" lw 3
unset format
#L
  plot path."out.dat" u 2 w l t "Augmented Lagrangian"  lw 3

#Constraint
  constr = system("cat ".path."constrtarget");
plot path."out.dat" u 3 w l t "V" lw 3, path."out.dat" u (constr+0*$3) w l t "Vtarget"  lw 3

  #
  unset logscale
  plot path."out.dat" u 4 w l t "Lagrange multiplier"  lw 3
  unset multiplot

unset multiplot
set logscale y
set grid
plot path."out.dat" u 5 w lp