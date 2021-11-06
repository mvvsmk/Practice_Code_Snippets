clc;
clear;
x0=0;
x1=0.5; %initial guess
tol=0.00001;
f=@(x) 9*exp(-x)*sin(2*pi*x)-3.5;
f1=@(x) 18*pi*exp(-x)*cos(2*pi*x) - 9*exp(-x)*sin(2*pi*x);
max=1000000; % number of itrations 
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

clc;
clear;
tol=0.00001;
f=@(x) 9*exp(-x)*sin(2*pi*x)-3.5;
f1=@(x) 18*pi*exp(-x)*cos(2*pi*x) - 9*exp(-x)*sin(2*pi*x);
N=100; % number of itrations
x0=0; %initial guess
i=1;
while i<=N
    x1 = x0- (f(x0)/f1(x0));
    if(abs(x1-x0)<tol && abs(f(x1))<tol)
        fprintf("root is = %f in %f itrations \n",x1,i);
        break;
    else
        x0=x1;
        i=i+1;
    end
end