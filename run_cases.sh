case "$1" in
    1)
	    echo "Launching test-case 1"
	    $FreeFem++ main.edp --config 2 --testcase 1 --meshname shortcantilever --resu results/Elastic/shortcantilever --save 1 --ns 3 --augLag 1 --regex 0 --cr 0.2 --b0 1. --bmax 100. --l0 0.0 --gm 0.05 --tau 0.00005 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --meshsize 0.03 $
	;;
    2)
	    echo "Launching test-case 2"
	    $FreeFem++ main.edp --config 2 --testcase 2 --meshname longcantilever --resu results/Elastic/longcantilever --save 1 --ns 3 --augLag 1 --regex 0 --cr 0.3 --b0 1e-2 --bmax 100. --l0 0.0 --gm 0.05 --tau 0.0001 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --meshsize 0.03 $
	;;
    3)
	    echo "Launching test-case 3"
	    $FreeFem++ main.edp --config 2 --testcase 3 --meshname cantilever2loads --resu results/Elastic/cantilever2loads --save 1 --ns 3 --augLag 1 --regex 1 --cr 0.25 --b0 1. --bmax 100. --l0 0.0 --gm 0.9 --tau 0.0005 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --meshsize 0.03 --jmax 1000 $
	;;
    4)
	    echo "Launching test-case 4"
	    $FreeFem++ main.edp --config 2 --testcase 5 --meshname bridge --resu results/Elastic/bridge --augLag 1 --regex 1 --save 1 --ns 3 --cr 0.15 --b0 10. --bmax 1000. --l0 0.0 --gm 0.999 --tau 0.0001 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --meshsize 0.03 $
	;;
    5)
	    echo "Launching test-case 5"
	    $FreeFem++ main.edp --config 2 --testcase 6 --meshname mast --resu results/Elastic/mast --save 1 --ns 3 --augLag 1 --regex 0 --move 1 --cr 0.2 --b0 10. --bmax 1000. --l0 0.0 --movestep 1e-2 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --gm 0.05 --minarea 1e-4 --meshsize 0.03 $
	;;
    *)
	echo "Usage : $0 {1|2|3|4|5}"
	;;
esac