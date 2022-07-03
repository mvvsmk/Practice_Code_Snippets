%% signals and systems lab 

clc;
clear;
close all;
t1= -10:0.01:-0.01;
t2= -0.01:0.01;
t3= 0.01:0.01:10;
u1= zeros(size(t1));
u2= ones(size(t2));
u3= zeros(size(t3));
t= [t1 t2 t3];
u= [u1 u2 u3];
plot(t,u);
ylim([-0.2,1.2]);
xlabel('time')
ylabel('u(t)')
title("Dirac Delta function M V V S Manoj Kumar 102056008")