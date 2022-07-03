clc;
clear all;
b=1;
a=0;
h=0.2;
n=(b-a)/h;

f= @(x,y) sqrt(2+y);
y(1)=0.8;
x(1)=0;

for i=1:n
    x(i+1)=x(i)+h;
    y(i+1)=y(i)+h*f(x(i),y(i));
end
disp (y)
