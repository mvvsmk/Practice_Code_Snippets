%code for SOR part a
clc
clear 
a=[10 8 -3 1;2 10 1 -4;3 -4 10 1; 2 2 -3 10];
b=[16; 9;10;11];
n=size(a,1);
tol=10^(-3);
x0=zeros(n,1); % an alternative to x0=[0; 0; 0; 0];
x=zeros(n,1);
w=1.2;         % SORfor k=1:100
for k=1:100
for i=1:n
    x(i)=(1-w)*x0(i)+w*(b(i)-a(i,i+1:n)*x0(i+1:n)-a(i,1:i-1)*x(1:i-1))/(a(i,i));
end
if norm(x-x0,inf)<tol
    fprintf('The final solution is obtained in %d iterations \n',k);
    disp(x);
    break;
else
    x0=x;
end
end