# Shape optimization
This project is an implementation of the numerical algorithm for shape optimization problems for mechanics models, such as Stokes flow and linear elastic structure. The program is written in Freefem++ tool using finite element method (FEM).

### Freefem++ installation
First, you must install recent [Freefem++](http://www.freefem.org/ff++/). This program was written with version Freefem++ 3.47. 

### Clone this repository
You can download the zip at [here](https://github.com/lvchien/shape_optimization/archive/master.zip) or clone this repository by git command
```
https://github.com/lvchien/shape_optimization.git
```

### Usage
#### Generate mesh files:
The command that be used to generate mesh file is as following syntax:
```
Freefem++ genMesh.edp [--config numconfig] [--testcase numtestcase] [--meshname "name"] [--nn numpoints] 
```

#### Run main algorithm:
First, we have to setting problem's configurations by redefine macros:
```
Objective funtion J and its derivative dJ
Constraint function Constr  and its derivative dCon
Lagrange function L and its derivative dL
Solvers of the state system, adjoint system and regularization extension proceduce.
```

The general syntax is:
```
Freefem++ main.edp [--config numconfig] [--testcase numtestcase] [--meshname "name"] [--resu "resfolder"] [--arg value]
```
where basic options are
```
--config      the configuration (1 for Stokes flow problems, 2 for linear elastic problem, so on )
--testcase    the test case of problems (e.g. for Stokes problems, 1 = pipe, 2 = diffuser, 3 = double pipe, 4 = obstacle, 5 = human lung)
--meshname    the name of mesh file (e.g. pipe)
--resu        the results directory (created if non-existent)
--augLag      1 = using augmented Lagrange, 0 = using common Lagrange (augmented Lagrange default)
```
and numerical parameters are listed below:
```
--cr          Ratio of constraint: constrtarget = cr * constr0
--b0          Initial value of penalty coefficient b
--bmax        Maximal value of penalty coefficient b, no longer update if b > bmax
--l0          Initial value of the Lagrange multiplier l
--tau         Descent step
--alpha       Update coefficient of b : b^{n+1} = alpha*b^n (Must be greater than 1)
--errc        Value for the stopping criterion \eps_{stop} on the residual
--gm          The regularization parameter
--remesh      Remesh configuration: 1 = remesh if necessary, 0 = no remeshing
--minarea     Remesh parameter: remesh if any element has an area less than minarea
--meshsize    Required edge size when remeshing : hmax = meshsize, hmin = meshsize/sqrt(2)
```
and problem's parameters:
```
--mu          The constant kinematic viscosity of the fluid (only for flow problem)
--E           The Young modulus of material (only for elastic problem)
--nu          The Poisson ratio (only for elastic problem)
```

An example command for **pipe** test in **Stokes flow problem** is as follow:
```
Freefem++ main.edp --config 1 --testcase 1 --meshname pipe --resu results\Stokes\pipe --cr 1 --b0 10 --bmax 100 --l0 0 --tau 0.01 --errc 0.01 --alpha 1.05 --gm 0.01
```

### Authors
This program has been developed by Le Van Chien, Nguyen Hoang Linh and Ta Thi Thanh Mai (School of Applied Mathematics and Informatics, Hanoi University of Science and Technology).

Any suggestions or contributions are welcome. If you have any questions or want to create contributive brands, feel free to contact us at v.chienle@gmail.com.
