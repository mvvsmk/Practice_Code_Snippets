clc;
clear;
close all;
t1 = -10:0.01:2;
t2 = 2:0.01:10;
u1 = zeros(size(t1));
u2 = ones(size(t2));
t = [t1 t2];
u = [u1 u2];
ramp = (t-2).*u;
plot(t,ramp);
xlabel('time');
ylabel('r(t)');
title('Shifted Ramp function M V V S Manoj Kumar 102056008')