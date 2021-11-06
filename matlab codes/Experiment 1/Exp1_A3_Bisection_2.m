clc;
clear;
tol=10^(-3);
a=1;
b=2;
f=@(x) x^3 + 4*x^2 - 10;
i=1;
while true
    c=(a+b)/2;
    if(f(a)*f(c)<0)
        b=c;
    else
        a=c;
    end
    if abs(f(c))<tol && abs(b-a)<tol
        fprintf('The root is %f \n The number of iterations were %f \n',c,i);
        break;
    end
    i=i+1;
end
        