clc;
clear;
a=[pi,sqrt(2),-1,1 ;exp(1) ,-1 ,1 ,2; 1, 1, -sqrt(3), 1; -1, -1, 1, -sqrt(5)];
b=[0; 1; 2; 3];

[n,~]=size(a);
p=0;
for i=1:n-1
    for k=i:n
        if(a(k,i)~=0)
            p=k;
            break;
        end
    end
    if(p==0)
        disp('No uniqie solution exists');
        break;
    end
    if(p~=i)
        t=a(i,:);
        a(i,:) = a(p,:);
        a(p,:)=t;
        t=b(i,:);
        b(i,:) = b(p,:);
        b(p,:)=t;
    end

    for j=i+1:n
        m(j,i) = a(j,i)/a(i,i);
        a(j,:) = a(j,:) - m(j,i)*a(i,:);
    end
end

U = a;
l=m;
for i=1:n
    l(i,i)=1;
end
L = l;
y = inv(L)*b;
x = inv(U)*y;
fprintf("The values of x1,x2,x3,x4 are \n");
disp(x');
fprintf("respectively \n");