clc;
clear all;
t = [-10: 0.01 :10] ;
x1 = (4/pi)*sin(t);
x2 = (4/pi)*(1/3)*sin(3.*t);
x3 = (4/pi)*(1/5)*sin(5.*t);
x4 = (4/pi)*(1/7)*sin(7.*t);
x = x1 + x2 + x3 + x4;

figure
subplot(2,2,1);
plot(t,x1);
subplot(2,2,2);
plot(t,x2);
subplot(2,2,3);
plot(t,x3);
subplot(2,2,4);
plot(t,x4);

figure
plot(t,x);