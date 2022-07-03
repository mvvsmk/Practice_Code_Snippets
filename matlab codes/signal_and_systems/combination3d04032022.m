clc;
clear;
close all;
t1 = [-10 : 1: -1];
t2 = [0: 1: 10];
u1 = zeros(size(t1));
u2 = ones(size(t2));
t = [t1 t2];
u = [u1 u2];

t3 = [-10 : 1: 0];
t4 = [1: 1: 10];
u3 = ones(size(t3));
u4 = zeros(size(t4));
negu = [u3 u4];

eveu = (1/2)*(u + negu);
oddu = (1/2)*(u - negu);

x = oddu + eveu;

figure
subplot(2,2,1);
stem(t,u);
title("unit step fuction");
subplot(2,2,2);
stem(t,negu);
title("u(-n)");
subplot(2,2,3);
stem(t,eveu);
title("even u(n)");
subplot(2,2,4);
stem(t,oddu);
title("odd u(n)");

figure
stem(t,x);