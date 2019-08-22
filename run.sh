case "$1" in
    1)
	    echo "Launching test-case 1"
	    $FreeFem++ CSM_main.edp --mshname shortcantilever --resu results/Elastic/shortcantilever --steps 3 --regex 1 --cr 0.2 --b0 1. --bmax 100. --l0 0.0 --gm 0.05 --tau0 0.00005 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --mshsize 0.03 $
	;;
    2)
	    echo "Launching test-case 2"
	    $FreeFem++ CSM_main.edp --mshname longcantilever --resu results/Elastic/longcantilever --steps 3 --regex 1 --cr 0.3 --b0 1e-2 --bmax 100. --l0 0.0 --gm 0.05 --tau0 0.0001 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --mshsize 0.03 $
	;;
    3)
	    echo "Launching test-case 3"
	    $FreeFem++ CSM_main.edp --mshname cantilever2loads --resu results/Elastic/cantilever2loads --steps 3 --regex 2 --cr 0.25 --b0 1. --bmax 100. --l0 0.0 --gm 0.9 --tau0 0.0005 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --mshsize 0.03 $
	;;
    4)
	    echo "Launching test-case 4"
	    $FreeFem++ CSM_main.edp --mshname bridge --resu results/Elastic/bridge --regex 2 --steps 3 --cr 0.15 --b0 10. --bmax 1000. --l0 0.0 --gm 0.999 --tau0 0.0001 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --minarea 1e-4 --mshsize 0.03 $
	;;
    5)
	    echo "Launching test-case 5"
	    $FreeFem++ CSM_main.edp --mshname mast --resu results/Elastic/mast --steps 3 --regex 1 --fixstep 1 --cr 0.2 --b0 10. --bmax 1000. --l0 0.0 --length 1e-2 --betamin 0.5 --betamax 0.7 --sm 1e-4 --alpha 1.05 --gm 0.05 --minarea 1e-4 --mshsize 0.03 $
	;;
    *)
	echo "Usage : $0 {1|2|3|4|5}"
	;;
esac