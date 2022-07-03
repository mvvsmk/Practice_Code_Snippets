%this code tries to eleminate the manual changing of x0 and replaces it
%with IVT
clc;
clear;
% instead of manually checking by substituting all possible values of x0
% we take an interval a,b and using IVT iteratively try-out different points
a=-5;
b=5;

%now in this interval we have a sub interval n whoes stepsize is n
n=1000;
h=(b-1)/n;

%now t is the tolerence for the IVT
e=10^(-3) ;

% f is  the given function , f1- first derivativ, f2 -second derivative
f=@(x) tan(x)-4*x;
syms x;
f1=@(x) tan(x)^2 - 3;
f2=@(x) 2*tan(x)*(tan(x)^2 + 1);

% g isn the fixed point function, g1 - is it's first derivative
g=@(x) x-f(x)/f1(x);
g1=@(x) (f(x)*f2(x))/(f1(x)*f1(x));

while(a<b)
    if f(a)*f(a+h)<0 %IVT code
        fprintf('Root lies between %f and %f \t',a,a+h);
        a1=a;
        b1=a+h;
        c=(a1+b1)/2;
        
        while 1
            if( abs(g1(c))<1 && g(c)<= b1 && g(c)>=a1) %checking the 3 conditions for a root 
                c1=g(c);
                if( abs(c1-c)<e && abs (f(c))<e)
                    fprintf('Root is = %f \n',c1);
                    break;
                else
                    c=c1;
                end
            else
                fprintf('-------Changing the interval----\n');
                break;
            end
        end
    end
   a=a+h;          
end


