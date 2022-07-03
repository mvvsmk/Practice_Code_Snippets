% z = -x1 + 3 x2 + -2 X3 ; 
% 3 x1 - x2 + 2 x3 <= 7;
% -2 x1 + 4 x2 <= 12;
% -4 x1 + 3 x2 + 8 x3 <= 10;
% x1 , x2 , x3 >=0

clc;
clear;
A = [3, -1, 2, 1, 0, 0, 7; -2, 4, 0, 0, 1, 0, 12 ; -4, 3, 8, 0, 0, 1, 10];
cj = [-1, 3, -2, 0, 0, 0, 0];
n =size(A,1);
basic = cj(n+1:length(cj)-1);
zj = basic * A;
values = zj - cj;
if any(values < 0)
    disp('not optimal');
    [minv, piviot] = min(values);
    ratios = A(:,end)./A(:,piviot);
    ratios(ratios < 0  )=NaN;
    [minval, index]= min(ratios);
    pv_row = A(index,:);
    pv_col = A(:,piviot);
    piviot_key = A(index,piviot);
    A(index,:)=A(index,:)./piviot_key;
    for i = 1 : size(A(1))
        if( i ~=index)
            A(i,:) = a(i,:) - A(index,:)*A(i,piviot);
            values = 
        end
    end
else 
    disp('optimal solution');
end