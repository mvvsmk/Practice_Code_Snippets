%Simpson Rule
clc;
clear;

n = 8; %number of point to divide between a and b
a = 0;
b = 2;
h= (b-a)/n;

f =@(x) (2.*x)./((x.^2+1).^2+1);
p =@(x) sqrt(1+f(x).^2);
x=a:(h/2):b;
y = f(x);
len= length(y);
Ans=(1/3)*h*(y(1) +y(len) + 4* sum(y(2:2:len-1)) +2*sum(y(3:2:len-2)));
fprintf('Answer is %.9d \n',Ans);
