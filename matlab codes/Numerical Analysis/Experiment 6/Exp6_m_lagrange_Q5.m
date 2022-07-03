clc;
clear;
x=linspace(0,2*pi,8);
f=@(x) sin(x).^2;
n=length(x);

%defineing an array P containing all the points at which value needs to be
%calculated

p=[0.5 3.5 5.5 6.0]; 
for c= 1:length(p)
    for i = 1:n
        l(i)=1;
        for j = 1:n
            if j~=i
                l(i)=((p(c)-x(j))/(x(i)-x(j)))*l(i);
            end
        end
    end    
    final_value = sum(f(x).*l);
    fprintf('At point %f, the value is %f \n',p(c),final_value);
end