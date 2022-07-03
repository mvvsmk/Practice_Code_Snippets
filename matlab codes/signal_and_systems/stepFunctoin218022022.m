%% signals and systems lab 

clc;
clear;
close all;
t1= -10:1: -1;
t2= 0:1:10;
u1= zeros(size(t1));
u2= ones(size(t2));
t= [t1 t2];
u= [u1 u2];
stem(t,u);
ylim([-0.2,1.2]);
xlabel('n')
ylabel('u(n)')
title("Discreate unitstep function M V V S Manoj Kumar 102056008")
