clc;
clear;
h=1; %step size
f=@(r) 1.129241 * 10^(-3) + 2.341077 * 10^ (-4) *(2.303 * log(r))+ 8.775468 * 10^(-8) *((2.303 * log(r))^3) - (1/(18.99 + 273.15));
tol = 0.001;
N=100;

x= 0 :h :N ; %% array from 0 to 10 with step size h as we only need the positive root.

for i=1:length(x)-1
    if(f(x(i))*f(x(i+1))<0)
        fprintf("The resistance lies between %f and %f ohm \n",x(i),x(i+1));
        a=x(i);
        b=x(i+1);  
        while true
            c= (a+b)/2;
            if f(a)*f(c)<0
                b=c;
            else
                a=c;
            end
            if abs(f(c))<tol &&  abs(b-a)<tol
                fprintf("The resistance is = %f ohm \n",c);
                break;
            end
        end
    end
end