%question 3_a
clc;
clear;

n=4; %number of points to divide between a and b
a= 0;
b = 2;
h= (b-a)/n;
f=@(x) exp(x);
x=a:h:b;
y = f(x);
len= length(y);
Ans=(0.5)*h*(y(1) +y(len) + 2* sum(y(2:1:len-1)));
fprintf('Answer is %.9d \n',Ans);

