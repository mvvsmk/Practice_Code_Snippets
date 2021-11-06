clc;
clear;
x0=0;
x1=3;
tol=0.00001;
max=100;
f=@(x) x^2-17;
f1=@(x) 2*x;
i=1;
while i<=max
    x2 = x1-(x1-x0)*f(x1)/(f(x1)-f(x0));
    if abs(x2-x1)<=tol && abs(f(x2))<=tol
        fprintf("The root is = %f in %f itrations \n",x2,i)
        break;
    else
        x0=x1;
        x1=x2;
        i=i+1;
    end
end