# Linear Quadratic Regulator and Linear Quadratic Gaussian Controller Design
The control system was designed for the system shown in the figure.
Please have a look at the detailed report [here](https://github.com/Pruthvi-Sanghavi/LQR_LQG_Design/blob/master/LQR_LQG%20Report.pdf) 
### Problem Statement

<p align="justify">
  Consider a crane that moves along an one-dimensional track. It behaves as a friction-less cart with
  mass M actuated by an external force F that constitutes the input of the system. There are two loads
  suspended from cables attached to the crane. The loads have mass <i>m<sub>1</sub></i> and <i>m<sub>2</sub></i>, and the lengths of the cables
  are <i>l<sub>1</sub></i> and <i>l<sub>2</sub></i>, respectively. The following figure depicts the crane and associated variables used throughout
  this project.
</p>  
  
<p align="center">
  <img src="https://github.com/Pruthvi-Sanghavi/LQR_LQG_Design/blob/master/problem_figure.PNG" height="300"/>
</p>


### Design Procedure
1. Obtain the equations of motion for the system and the corresponding nonlinear state-space representation.
2. Obtain the linearized system around the equilibrium point specified by x = 0 and &theta;<sub>1</sub> = &theta;<sub>2</sub> = 0. Write
the state-space representation of the linearized system.
3. Obtain conditions on M, m<sub>1</sub>, m<sub>2</sub>, l<sub>1</sub>, l<sub>2</sub> for which the linearized system is controllable.
4. Choose M = 1000Kg, m1 = m2 = 100Kg, l1 = 20m and l2 = 10m. Check that
the system is controllable and obtain an LQR controller. Simulate the resulting response to initial
conditions when the controller is applied to the linearized system and also to the original nonlinear
system. Adjust the parameters of the LQR cost until you obtain a suitable response. Use Lyapunov’s
indirect method to certify stability (locally or globally) of the closed-loop system.
5. Suppose that you can select the following output vectors: x(t), (θ1(t), θ2(t)), (x(t), θ2(t)) or(x(t), θ1(t), θ2(t)).
Determine for which output vectors the linearized system is observable.
6. Obtain your "best" Luenberger observer for each one of the output vectors for which the system is
observable and simulate its response to initial conditions and unit step input. The simulation should
be done for the observer applied to both the linearized system and the original nonlinear system.
7. Design an output feedback controller for your choice of the "smallest" output vector. Use the LQG
method and apply the resulting output feedback controller to the original nonlinear system. Obtain
your best design and illustrate its performance in simulation. How would you reconfigure your controller to asymptotically track a constant reference on x ? Will your design reject constant force
disturbances applied on the cart ?

### Results

<p align="center">
  <img src="https://github.com/Pruthvi-Sanghavi/LQR_LQG_Design/blob/master/results/1.png" height="300"/>
  <img src="https://github.com/Pruthvi-Sanghavi/LQR_LQG_Design/blob/master/results/2.png" height="300"/>
</p>

