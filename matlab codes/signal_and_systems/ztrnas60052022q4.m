clc;
clear;
v= [];
xn = ones(1,10);
N = 10;
for k = 0:1: N-1 
    X =0;
    for  n = 0:1:N-1 
        X=X+(xn(n)*exp(-i*2*pi*k/N));
    end
    V = [V X];
end

