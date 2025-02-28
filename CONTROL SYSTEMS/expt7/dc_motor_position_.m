clc;
clear all;
close all;
% J : moment of inertia of rotor
J = 0.01;
% b : motor viscous friction constant
b = 0.1;
% R : resistance
R = 1;
% L : Inductance
L = 0.5;
% Ke : electromotive force constant, Kt: motor torque constant
K = 0.01;
% transfer function
p = tf('p');
ss = K/(p*((J*p+b)*(L*p+R)+K*K))