clc;
clear;
x0=0;
x1=-1.0; %initial guess
tol=0.00001;
f=@(x) exp(-x)*( x^2 + 5 * x +2) +1;
f1=@(x) exp(-x)*(2*x + 5) - exp(-x)*(x^2 + 5*x + 2);
max=100; % number of itrations 
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