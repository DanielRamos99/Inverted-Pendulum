# Inverted Pendulum

This project shows the development and implementation of a state feedback controller and observer for an inverted pendulum on a cart.  
The objective of the project is to ensure that the pendulum remains in a stable position to any noise or disturbance.  

The controller and the observer were designed through feedback states using the Ackerman formula. However, to achieve this, the system had to be modeled first through the physical laws that govern its behavior. Once the model was represented in state space with their respective values, it continued to carry out its analysis in steady state to check its instability. Subsequently, it was verified that the system was controllable and observable and, finally, the respective controller and observer was carried out. Each of these steps was verified both manually through the equations, as well as graphically through the response curves of the system in Simulink.
  
  
## Requirements of Software

* Matlab 2017b or above
* Simulink
  
  
## Requiremts for the controller

* Overshoot percentage (OS %) --> 0.5333 %
* Rise Time (tr) --> 1.2 s
  
  
## Requirements for the observer

* Overshoot percentage (OS %) --> 0.5333 %
* Settling Time (ts) --> 0.1108 s
  
  
## How to run the programs

### Steps

1. Run the Matlab file `InvertedPendulum.m`
