clc;
clear all;
syms t w;
x = exp(-t^2);
f = exp(-t^2)*exp(-j*w*t);
X = int(f,t,-inf,inf)
%fourier(function'sName,variable)