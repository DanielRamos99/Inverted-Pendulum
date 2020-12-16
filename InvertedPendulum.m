%% INVERTED PENDULUM

% Clean everything
clear all, close all, clc;

%% System

% Chacracteristics of the system
M = 1;
m = 1;
l = 0.25;
g = 9.81;
kd = 1;

% Requirements
sd = 0.5333/100;                    % Overshoot
tr = 1.2;                           % Rise time

%% Sate space

% Sate matrices
A = [0          1                        0                0; 
     0   -(4*kd)/(4*M+m)          (3*m*g)/(4*M+m)         0;
     0          0                        0                1;
     0  -(3*kd)/(4*M*l+m*l)    ((3*g)*(M+m))/(4*M*l+m*l)  0];
 
B = [0; 4/(4*M+m); 0; 3/(4*M*l+m*l)];
C = [1 0 0 0; 0 0 1 0];
D = [0];


% Sate representation
sys = ss(A,B,C,D)

%% Analyzing and designing the controller

% Poles
E = eig(A)

% Controllability and Observability
con = rank(ctrb(A,B))        % 4 = controlable
ob = rank(obsv(A,C))         % 4 = observable

% zeta and wn
zeta = sqrt(((log(sd))^2)/((log(sd))^2 + pi^2))
wn = (pi-atan(sqrt(1-(zeta)^2)/zeta))/(tr*sqrt(1-(zeta)^2))

% Dominant poles
pd = roots([1 2*zeta*wn wn^2]);

% Desire poles
P = [pd(1) pd(2) -50 -50];

% Ackerman formula / Pole placement
% K = place(A, B, P)
K = acker(A, B, P)

% New poles
An = A - B*K;
En = eig(An)

% State spce with the controller
sysn = ss(An, B, C, D)

%% Graphics

% System with and without controller
figure (1)
subplot(2,1,1);
step(sys)
title('Response of the cart position and the pendulum angle without controller')
subplot(2,1,2);
step(sysn)
title('Response of the cart position and the pendulum angle with controller')
