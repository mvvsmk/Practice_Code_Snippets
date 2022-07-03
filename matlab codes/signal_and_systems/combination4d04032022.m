clc;
clear;
close all;
%% u1
t1 = [-10 : 1: -1];
t2 = [0: 1: 20];
u1 = zeros(size(t1));
u2 = ones(size(t2));
t = [t1 t2];
un1 = [u1 u2];
%% u2
t3 = [-10 : 1: 9];
t4 = [10: 1: 20];
u3 = zeros(size(t3));
u4 = ones(size(t4));
un2 = [u3 u4];
%% xn
xn= un1 - un2;
%% negxn

negxn1 = xn;
find(negxn1 ==0) = 2;
find(negxn1 ==1) = 0;
find(negxn1 ==2) = 1;

% -u1
t1 = [-10 : 1: 0];
t2 = [1: 1: 20];
u1 = ones(size(t1));
u2 = zeros(size(t2));
t = [t1 t2];
un1 = [u1 u2];
% -u2
t3 = [-10 : 1: 10];
t4 = [11: 1: 20];
u3 = ones(size(t3));
u4 = zeros(size(t4));
un2 = [u3 u4];

negx = un1 - un2;

evex = (1/2)*(xn + negx);
oddx = (1/2)*(xn - negx);

figure
subplot(2,2,1);
stem(t,xn);
title("x");
subplot(2,2,2);
stem(t,negx);
title("x(-n)");
subplot(2,2,3);
stem(t,evex);
title("even x(n)");
subplot(2,2,4);
stem(t,oddx);
title("odd x(n)");
