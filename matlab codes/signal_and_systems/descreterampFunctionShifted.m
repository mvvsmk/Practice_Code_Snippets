clc;
clear;
close all;
t1 = -10:1:2;
t2 = 2:1:10;
u1 = zeros(size(t1));
u2 = ones(size(t2));
t = [t1 t2];
u = [u1 u2];
ramp = (t-2).*u;
stem(t,ramp);
xlabel('time');
ylabel('r(t)');
title('Descrete Shifted Ramp function Aryan Gupta 102056002')