clc;
clear;
close all;
t1 = -10:1:0;
t2 = 1:1:10;
u1 = zeros(size(t1));
u2 = ones(size(t2));
t = [t1 t2];
u = [u1 u2];
ramp = t.*u;
stem(t,ramp);
xlabel('time');
ylabel('r(t)');
title('Discrete Ramp function Aryan Gupta 102056002')