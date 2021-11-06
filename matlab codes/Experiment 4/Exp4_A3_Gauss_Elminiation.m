clc;
clear ;
A=[10,8,-3,1;2,10,1,-4;3,-4,10,1;2, 2,-3,10];
b=[16;9;10;11];
a=[A b];
n=length(A);
l=eye(5);
for j=1:1:n-1
    for i=j+1:1:n
        m=a(i,j)/a(j,j);
        for k=1:1:n+1
            a(i,k)=a(i,k)-m*a(j,k);
        end
    end
end
x(n)=a(n,n+1)/a(n,n);
for i=n-1:-1:1
    sum=0;
    for j=i+1:1:n
        sum=sum+a(i,j)*x(j);
    end 
    x(i)=(a(i,n+1)-sum)/a(i,i);
end
fprintf("The values of x,y,z,u are \n");
disp(x);
fprintf("respectively \n");