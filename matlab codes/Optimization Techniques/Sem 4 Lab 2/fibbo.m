clc;
clear;
n = input("enter a number ");
v = [1, 1];
for i = 3 : n+1
    v(i) = v(i-1) +v(i-2);
end
disp(v);
% Fn = v(n) Ln = length of the smallest interval , Lo = initaial length ;
% Fn = ln/lo
f=@(x) x*(x-2);
n = 4;
a = 0;
b = 1.5;
d = [0 0 0 0 0 0 ]; % d= [a b x1 x2 f(x1) f(x2)]
for i = n+1:-1:3
    lo=b-a;
    length = (v(i-2)/v(i))*lo;
    x1 = a+length;
    x2 = b -length;
    d = [a, b, x1, x2, f(x1), f(x2)];
    if f(x1) < f(x2)
        b = x2;
    else
        a = x1;
    end
    disp(d);
end
os = (a-b)/2;
ov = f(os);