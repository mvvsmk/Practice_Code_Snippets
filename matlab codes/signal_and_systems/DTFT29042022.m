clc;
clear all;
a = 0.5;    %a<0.1
i = 1;
x = [];
X = 0;
for r = 1: 100
    u(r) = a*exp(r).*u(r);
end
t = [t1 t2];
x = a*heaviside(100);
n = 1;100;
b =[];
d = [];
for w = -2*pi:0.01:2*pi
    for i = 0:100
        X = X + x*exp(-j*w*i);
    end
    b = [b, X];
    X =0;
end
w = -2*pi:0.01:2*pi;
N = 0:0.01:
ANGLE = angle(b);
MAG = abs(b);
subplot(3,1,1)
plot(t,u)
subplot(3,1,2)
plot(w,ANGLE)
subplot(3,1,3)
plot(w,MAG)

%%
clc
clear
X = 0;
for n=1:500
    for w = -2*pi:0.1:2*pi
        X = X +((0.5)^n)*exp(-i*n*w);
    end
end
a=abs(X)
p=angle(X)