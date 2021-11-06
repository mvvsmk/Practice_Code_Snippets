clc;
clear;
a=[5, 5, 0, 0, 0; 0, 0, 1, -1, -1; 0, 0, 0, 2, -3; 1, -1, -1, 0, 0; 0, 5, -7, -2, 0];
b=[5.5;0;0;0;0];
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
fprintf("The values of i1,i2,i3,i4 in Amperes are \n");
disp(x');
fprintf("respectively \n");