clc;
clear all;
syms w t;
x = sin(w)/w;
X1 = ifourier(x,t);
X1 = simplify(X1);
%ezplot(X1, [-8, 8] );
fplot(X1,[-8,8]);
ylim([-1,1]);
title('M V V S Manoj Kumar 102056008');
xlabel('t');
ylabel('x1');