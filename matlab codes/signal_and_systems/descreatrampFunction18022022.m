%% signals and systems lab 

clc;
clear;
close all;
t1= -10:1:0;
t2= 0:1:10;
u1= zeros(size(t1));
u2= ones(size(t2));
t= [t1 t2];
u= [u1 u2];
ramp = t.*u;
stem(t,ramp);
ylim([-0.2,10.2]);
xlabel('time')
ylabel('r(t)')
title("ramp function M V V S Manoj Kumar 102056008")
