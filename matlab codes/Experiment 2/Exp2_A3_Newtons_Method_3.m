clc;
clear;
f=@(x) 2*sin(x);
f1=@(x) 2*cos(x);
tol = 0.00001;
N=5; 
max = 100; % max no of itrations
x= 0 :1 :N ; %% array from 0 to 5 
for i=1:length(x)-1
    if(f(x(i))*f(x(i+1))<0)
        fprintf("A root lies between %f and %f \n",x(i),x(i+1));
        a=x(i);
        b=x(i+1);  
        x0=(a+b)/2;
        j=0;
        while i<=max
            x1 = x0 - (f(x0)/f1(x0));
            if(abs(x1-x0)<tol && abs(f(x1))<tol)
                fprintf("non-zero soulution is = %f , found in %f itrations within the interval \n",x1,j);
                break;
            else
                x0=x1;
                j=j+1;
            end
        end
    end
end