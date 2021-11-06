clc;
clear;
h=1; %step size
f=@(x) x^2 - 29;
tol = 0.001;
N=10;
x= 0 :h :N ; %% array from 0 to 10 with step size h as we only need the positive root.

for i=1:length(x)-1
    if(f(x(i))*f(x(i+1))<0)
        fprintf("The root lies between %f and %f \n",x(i),x(i+1));
        a=x(i);
        b=x(i+1);  
        x0=(a+b)/2;
        while true
            c=(a+b)/2;
            if(f(a)*f(c)<0)
                b=c;
            else
                a=c;
            end
            if abs(f(c))<tol && abs(b-a)<tol
                fprintf('The root is %f \n',c);
                break;
            end
        end 
    end
end