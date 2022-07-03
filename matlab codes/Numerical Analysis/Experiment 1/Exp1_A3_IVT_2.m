clc;
clear;
f=@(x) x^3 + 4*x^2 - 10;
h=10^(-3); %%step size
a=1;
b=2;
x = a:h :b ; %% array from 0 to 10 with step size h as we only need the positive root.

for i=1:1:length(x)-1
    if(f(x(i)) * f(x(i+1)) < 0)
        fprintf("The root lies between %f and %f \n",x(i),x(i+1));
        fprintf("The no of itrations required was %f \n",i);
    end
end