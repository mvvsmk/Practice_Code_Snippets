%% experiment 7 intrpolation (estimating the middle value)

%% newton devider difference (f(2.25))

clc;
clear;
x = [1, 1.5, 2.0, 2.5]; %% entering data  
f = [2.7183, 4.4817, 7.3891, 12.1825];
p = 2.25;
n = length(x);
d = zeros(n);
d(:,1) = f;
for j = 2 : n
    for i = 1: n - j + 1
        d(i,j)= (d(i+1, j-1) - d(i, j-1)) / (x(i+j-1)-x(i));
    end
end

res = d(1,1);

for i = 2 : n
       res = res + d(1,i) * prod(p-x(1:i-1)); 
end

fprintf('The result at %f is %f \n', p, res);
f1 = @(x) exp(x); 
exact=f1(p);
err = abs( exact - res);
fprintf('The exact value at is %f \n', exact);
fprintf('The error at is %f \n', err);
