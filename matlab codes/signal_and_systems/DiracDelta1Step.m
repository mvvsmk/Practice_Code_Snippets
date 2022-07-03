%% signals and systems lab 

clc;
clear;
close all;
t1= -10:1:-1;
t2= 2:1:2;
t3= 3:1:10;
u1= zeros(size(t1));
u2= ones(size(t2));
u3= zeros(size(t3));
t= [t1 t2 t3];
u= [u1 u2 u3];
stem(t,u);
ylim([-0.2,1.2]);
xlabel('time')
ylabel('u(t)')
title("Discreat Dirac Delta function M V V S Manoj Kumar 102056008")