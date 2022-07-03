clc;
clear;
close all;
omega = input('enter frequency :');
n = [-10: 0.01 : 10];
x = exp(1j*omega*pi*n);
real = real(x);
img = imag(x);
con = conj(x);
ang = angle(x);
absolute = abs(x);

subplot(2,2,1);
plot(n,x);

subplot(2,2,2);
plot(n,real);

subplot(2,2,3);
plot(n,img);

subplot(2,2,4);
plot(n,ang);
