clc
clear
syms n z
x = 2^n;
x1 = ztrans(x,z);
x2 = iztrans(x1,n);
