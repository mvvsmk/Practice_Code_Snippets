clc;
clear;
tol=0.00001;
f=@(y) y^2 - 17;
f1=@(y) 2*y;
N=100; % number of itrations
x0=1; %initial guess
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
