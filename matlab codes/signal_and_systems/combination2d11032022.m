clc;
clear;
close all;

x = [1,2,0,0];
h = [1,2,4,0];
hf = flip(h);
y = [];
yi=0;
for i = 0 : 4
    for j = 0 : 2
        yi = x(j+1)*h([x(i)-j]+1) + yi;
    end
    y = [y yij];
    yi=0;
end
 plot(x,y);