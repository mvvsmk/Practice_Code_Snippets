clc;
clear;
f=@(x) x^2-29;
h=0.1; %%step size
x = 0:h :10 ; %% array from 0 to 10 with step size h as we only need the positive root.

for i=1:1:length(x)-1
    if(f(x(i)) * f(x(i+1)) < 0)
        fprintf("The root lies between %f and %f \n",x(i),x(i+1));
    end
end