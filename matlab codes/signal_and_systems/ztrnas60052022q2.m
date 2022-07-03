clc
clear
syms n z
x = 0.9^n;
x = symsum(x.*(z.^-n),n,0,inf);