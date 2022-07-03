%% 28/2/2022 basic fesible solution
clc;
clear;
A = [2, 1, 3, 1; 3, 4, 1, 2];
B = [5; 6];
C = [3, 1, 4, 0];
n = size(A,2);
m = size(A,1);
z = nchoosek(n,m);
pairs = nchoosek(1:n,m);
points = [];
if (n > m)
    for i = 1 : z
        Yi = zeros(n,1);
        Ai = A(:,pairs(i,:));
        Xi = inv(Ai)*B;
        if( Xi >= 0 & Xi ~= inf & Xi ~=-inf)
            Yi(pairs(i,:))= Xi;
            points = [ points, Yi];
        end
    end       
else
    printf('error ');
end
values = [];
for i = 1 : size(points,2)
    cond = C*points(:,i);
    values = [ values; cond];
end

[opt, ind] = max(values);