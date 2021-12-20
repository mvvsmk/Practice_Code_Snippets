%% experiment 7 intrpolation (estimating the middle value)

%% newton devider difference (f(2.25))

clc;
clear;
x = [0, 0.25, 0.5, 0.75]; %% entering data  
f = [1, 1.64872, 2.71828, 4.4816];
p = 0.43;
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