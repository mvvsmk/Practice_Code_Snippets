clc
clear 
a=[4.63 -1.21 3.22; -3.07 5.48 2.11; 1.26 3.11 4.57];
b=[2.22 -3.17 5.11];
n=size(a,1);
tol=10^(-3);
x0=[0; 0; 0];
x=[0; 0; 0];
for k=1:100
for i=1:n
    x(i)=(b(i)-a(i,i+1:n)*x0(i+1:n)-a(i,1:i-1)*x(1:i-1))/(a(i,i));
end
if norm(x-x0,inf)<tol
    fprintf('The final solution is obtained in %d iterations \n',k);
    disp(x);
    break;
else
    x0=x;
end
end