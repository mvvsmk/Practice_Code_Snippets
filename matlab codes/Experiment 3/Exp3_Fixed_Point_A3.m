clc
clear
f=@(x) tan(x)-4*x;
f1=@(x) tan(x)^2 - 3;
g=@(x) x-f(x)/f1(x);        %step 1) define g(x)
tol=10^(-3);
x0=1.5;                     %step2) inital guess

i=1;
while i<=100
    x1=g(x0);
    i=i+1;
    if abs(x1-x0)<=tol
        fprintf("The fixed point exists and is at %f in %f itrations \n",x1,i);
        break;
    else
        x0=x1;
    end
end

if i==101
    fprintf('Change the given g function or initial guess');
end


