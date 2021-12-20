%question 3 
clc;
clear;

n=20; %number of points to divide between a and b
a = 1;
b = -1;
h = (b-a)/n;
f = @(x) exp(-1.*x.^2).*cos(x);
x = a:(h/2):b;
y = f(x);
len = length(y);
Ans = (1/3)*h*(y(1) +y(len) + 4* sum(y(2:2:len-1)) +2*sum(y(3:2:len-2)));
fprintf('Answer is %.9d \n',Ans);

