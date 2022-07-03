clc;
clear;
close all;
a = input('Enter start point :');
b = input('Enter end point :');
t1 = [-10: 0.01: a];
t2 = [a: 0.01: b];
t3 = [b: 0.01 : 10];
t = [t1, t2, t3];
u1 = zeros(size(t1));
u2 = ones(size(t2));
u3 = zeros(size(t3));
u = [u1, u2, u3];
plot(t,u);
ylim([-2, 3]);
xlabel('time');
ylabel('rectangular pulse');
title('Rectangular pulse Aryan Gupta 102056008')