clc;
clear all;
close all;
t = [-2*pi: 0.01 :2*pi] ;
x1 = sin(pi.*t)./(pi.*t);
plot(t,x1);