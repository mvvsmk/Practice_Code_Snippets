%Trapezoidal Rule
clc;
clear;
n=4;%number of points to divide between a and b
a=0;
b=2;
h=(b-a)/n; 

f =@(x) (2.*x)./((x.^2+1).^2+1);
p =@(x) sqrt(1+f(x).^2);
x =a:h:b;
y=p(x);
N=length(y);
Ans=(0.5)*h*(y(1)+y(N)+2*sum(y(2:1:N-1)));
fprintf('Answer is %.9d \n',Ans);
