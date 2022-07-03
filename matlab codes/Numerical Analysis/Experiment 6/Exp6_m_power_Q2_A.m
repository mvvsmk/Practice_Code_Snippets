clc;
clear;
A=[4 1 0;1 20 1; 0 1 4];
x=[1;1;1];
K0=1000;
tol=10^(-3);
for i = 1:100
    y=A*x;
    K1= max(y);
    x=(1/K1)*y;
    if abs(K0-K1)<tol
        fprintf('The largest eigen value is %f, obtained in %f iterations\n', K1, i);
        fprintf('The corresponding eigen vector is\n');
        disp(x);
        break;
    else
        K0=K1;
    end
end
