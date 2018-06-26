# Shape optimization
This project is an implementation of the numerical algorithm for shape optimization problems for mechanics models, such as Stokes flow and linear elastic structure. The program is written in Freefem++ tool using finite element method (FEM).

### Freefem++ installation
First, you must install recent [Freefem++](http://www.freefem.org/ff++/). This program was written with version Freefem++ 3.47. 

### Clone this repository
You can download the zip at [here](https://github.com/lvchien/shape_optimization/archive/master.zip) or clone this repository by git command
```
https://github.com/lvchien/shape_optimization.git
```

### Authors
This program has been developed by Le Van Chien, Nguyen Hoang Linh and Ta Thi Thanh Mai (School of Applied Mathematics and Informatics, Hanoi University of Science and Technology).

### Usage
#### Generate mesh files:
The command that be used to generate mesh file for testes is as following syntax:
```
Freefem++ genMesh.edp [--config numconfig] [--testcase numtestcase] [--meshname "name"] [--nn numpoints] 
```

#### Run main algorithm:
The general syntax is:
```
Freefem++ main.edp [--config numconfig] [--meshname "name"] [--dc numoption] [--resu "resfolder"] [--arg value]
```
where basic options are
```
--config      the test case (1 for Lid-driven cavity, 2 for Backward facing step, 3 for Cylider )
--meshname    the name of mesh file (e.g. liddriven19)
--dc          the config of defect-correction (DC) methods (1 for using DC or 0 for non-DC)
--resu        the results directory (created if non-existent)
```
and numerical parameters are listed below:
```
--nu          the constant kinematic viscosity of the fluid
--T           the final time (second)
--dt          the time step (second)
--sigma       the stabilizing factor of defect-correction method (only for dc = 1 case)
--save        save results to .sol files configuration (1 for save, 0 for non-save)
```
and other optional parameters.

An example command for **Lid-driven cavity** test is as follow:
```
Freefem++ main.edp --config 1 --meshname "liddriven19" --dc 1 --resu "results\Lid_driven\h19" --T 100 --nu 1e-4 --nbp 100
```

Any suggestions or contributions are welcome. If you have any questions or want to create contributive brands, feel free to contact us at v.chienle@gmail.com.
