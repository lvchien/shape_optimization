# Shape optimization
This project is an implementation of the numerical algorithms for constrained shape optimization problems in mechanics, such as Stokes flow and linear elastic structures. The program was written in FreeFem++ tool using finite element method (FEM).

### Freefem++ installation
Firstly, you should install most recent [FreeFem++](https://freefem.org/). This program was written with version Freefem++ 4.2.1. 

### Clone this repository
You can download the zip at [here](https://github.com/lvchien/shape_optimization/archive/master.zip) or clone this repository by git command:
```
git clone https://github.com/lvchien/shape_optimization.git
```

### Usage
#### Generate mesh files:
The command that be used to generate mesh files is as following syntax:
```
FreeFem++ PREFIX_genMesh.edp [--case test_case] [--mshname "name"] [--np num_of_points] 
```
where PREFIX is a short notation of the problem.
#### Run main algorithm:
The general syntax is:
```
FreeFem++ PREFIX_main.edp [--case test_case] [--mshname "name"] [--resu "folder"] [--arg value]
```
where basic options are
```
--case        the test case of problems
--mshname     the name of mesh file
--resu        the results directory (created if non-existent)
```
and numerical parameters are listed below:
```
--cr          Ratio of constraint: constrtarget = cr * constr0
--b0          Initial value of penalty coefficient b
--bmax        Maximal value of penalty coefficient b, no longer update if b > bmax
--l0          Initial value of the Lagrangian multiplier l
--tau         Descent step
--alpha       Update coefficient of b : b^{n+1} = alpha*b^n (must be greater than 1)
--errc        Value for the stopping criterion \eps_{stop} on the residual
--gm          The regularization parameter
--minarea     Remeshing parameter: remesh if any element has an area less than minarea
--mshsize     Required edge size when remeshing : hmax = meshsize, hmin = meshsize/sqrt(2)
```
and other specifed mechanical parameters.

An example command for **pipe** test in **Stokes flow problem** is as follow:
```
FreeFem++ main.edp --case 1 --mshname pipe --resu results\Stokes\pipe --cr 1.0 --b0 10 --bmax 100 --l0 0 --tau 0.01 --errc 0.01 --alpha 1.05 --gm 0.01
```

### Authors
This program has been developed by Le Van Chien (Research group NaM2, Ghent University) and Ta Thi Thanh Mai (School of Applied Mathematics and Informatics, Hanoi University of Science and Technology).

Any suggestions or contributions are welcome. If you have any questions or want to create contributive brands or use this program for your projects, feel free to contact us at v.chienle@gmail.com.
