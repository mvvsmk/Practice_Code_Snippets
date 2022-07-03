clc;
clear;
x=[0 8 16 24 32 40];
f=[14.621 11.843 9.870 8.418 7.305 6.4013];
n=length(x);

%for O(15)
p=15;
for i = 1:n
    l(i)=1;
    for j = 1:n
        if j~=i
            l(i)=((p-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end
final_value = sum(f.*l);
fprintf('At point O(15), the value is %f \n',final_value);

%for O(27)
p=27;
for i = 1:n
    l(i)=1;
    for j = 1:n
        if j~=i
            l(i)=((p-x(j))/(x(i)-x(j)))*l(i);
        end
    end
end
final_value = sum(f.*l);
fprintf('At point O(27), the value is %f \n',final_value);
