clc;
clear all;
syms w t;
x = exp(-3*t)*heaviside(t);
x1 = fourier(x,w);
x1 = simplify(x1);
fplot(x1,[-8,8]);
ylim([-3,10]);
title('Aryan Gupta 102056002');
xlabel('w');
ylabel('x1');
M = abs(x1)
ang = angle(x1)
