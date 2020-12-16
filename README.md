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

1. Run the Matlab file `InvertedPendulum.m`. This program will load all the system variables as well as the controller gain.
2. Run the Simulink file `SystemAnalysis.slx` in order to see the response of the system given an unit step input without the controller.
3. Run the Simulink file `Controller.slx` to see the behavior of the system with the controller included.
4. Run the Simulink file `Observer.slx` to see the result of the designed observer.
5. Run the Simulink file `Animation.slx` to see an animation of the system. The model to make the animation was taken from [here](https://www.mathworks.com/help/control/ug/control-of-an-inverted-pendulum-on-a-cart.html) and later modified for project purposes. In the animation, there is an external force (disturbance) that causes the pendulum to go out of control and the control action to stabilize the pendulum can be clearly observed. In turn, this behavior can be observed through the response graphs of the system.
