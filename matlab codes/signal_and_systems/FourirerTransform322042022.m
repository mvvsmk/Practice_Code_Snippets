clc;
clear all;
syms t w
X = sin(pi*t)/(pi*t);
x1 = fourier(X,w);
x1 = simplify(x1);

fplot(x1,[-8,8]);
ylim([-2,2]);
title('M V V S Manoj Kumar 102056008');
xlabel('w');
ylabel('x1');
