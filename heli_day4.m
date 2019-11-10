% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert høsten 2006 av Jostein Bakkeheim
% Oppdatert høsten 2008 av Arnfinn Aas Eielsen
% Oppdatert høsten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring


%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = 1;


%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]

V_s0 = 8;
K_f = 0.125; 
K_1 = (K_f)/(2*m_p*l_p);
K_2 = (K_f*l_h)/(m_c*l_c^2+2*m_p*l_h^2);
K_3 = (K_f*l_h*V_s0)/(m_c*l_c^2+2*m_p*(l_h^2+l_p^2));


%%%%%%%%%%% Pitch regulator constants
K_pd = 4;
K_pp = 8;

%%%%%%%%%%% Matrices
A = [0 1 0;0 0 0;0 0 0];
B = [0 0;0 K_1;K_2 0];
C = [1 0 0; 0 0 1];
Q = [90 0 0; 0 90 0; 0 0 300];
R = [1 0 ; 0 1];
K = lqr(A,B,Q,R);
F = inv(C*inv(B*K-A)*B);

A_i = [0 1 0 0 0;0 0 0 0 0;0 0 0 0 0;1 0 0 0 0;0 0 1 0 0];
B_i = [0 0;0 K_1;K_2 0;0 0;0 0];
C_i = [1 0 0 0 0; 0 0 1 0 0];
R_i = [1 0 ; 0 10];
Q_i = [100 0 0 0 0;
       0 100 0 0 0;
       0 0 200 0 0;
       0 0 0 30 0;
       0 0 0 0 30];
K_i = lqr(A_i,B_i,Q_i,R_i);
%F_i = inv(C_i*inv(B_i*K_i-A_i)*B_i);

%%%%%%%%%%% IMU
PORT = 9;


A_4 = [0 1 0 0 0 0;0 0 0 0 0 0;0 0 0 1 0 0;0 0 0 0 0 0;0 0 0 0 0 1;K_3 0 0 0 0 0];
C_4 = [0 1 0 0 0 0;0 0 0 1 0 0;0 0 0 0 0 1];
C_4_5 = [0 1 0 0 0 0;0 0 0 1 0 0;0 0 0 0 0 1; 1 0 0 0 0 0; 0 0 1 0 0 0];
O_1 = obsv(A_4,C_4);
O_2 = obsv(A_4,C_4_5);

