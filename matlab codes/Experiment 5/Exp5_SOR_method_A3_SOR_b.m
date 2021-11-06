%code for SOR part b
clc
clear 
a=[4 1 -1 1; 1 4 -1 -1; -1 -1 5 1; 1 -1 1 3];
b=[-2; -1; 0; 1];
n=size(a,1);
tol=10^(-3);
x0=zeros(n,1); % an alternative to x0=[0; 0; 0; 0];
x=zeros(n,1);
w=1.2;         % SOR
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