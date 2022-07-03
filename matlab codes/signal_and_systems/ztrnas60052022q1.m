clc
clear 
syms z
x = [ 3 5 4 3 ];
n = [0 1 2 3 ];
x = sum(x.*(z.^-n));
