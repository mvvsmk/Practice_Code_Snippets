clc;
clear;
f=@ (t,y) -1 * y + 2 * cos(t);
t(1) = 0;
y(1) = 1;
b = 1;
a = 0;
h = 0.2;
n = (b-a)/h;
for i=1 : n
    y(i+1) = y(i) + h * f(t(i),y(i));
    t(i+1) = t(i) + h;
end