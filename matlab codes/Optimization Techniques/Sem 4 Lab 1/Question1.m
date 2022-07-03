clc;
clear;
%% given equations 2x1+4x2 <=8 ,3x1+5x2 >=15 x1>=0, x2>=0

A = [2, 4; 3, 5];
B = [8; 15];
x1 = 0:1:10;
y21 = (1/A(1,2))*(B(1,1)-A(1,1)*x1);   
y22 = (1/A(2,2))*(B(2,1)-A(2,1)*x1);
%x21 = max(0,x21);
%x22 = max(0,x22);
y21(y21<0)= nan;
y22(y22<0)= nan;
%const = [x1(y21==0), x1(y22==0); y21(x1==0), y22(x1==0);];
%const'
%const1 = [ x1(find(x1==0), find(y21 == 0)); y21(find(x1==0), find(y21==0))];
%% const 1 and const 2 have the points where lines 1 and 2 touch the axix
cons1 = [x1([find(x1==0) find(y21==0)]); y21([find(x1==0) find(y21==0)])]';
cons2 = [x1([find(x1==0) find(y22==0)]); y22([find(x1==0) find(y22==0)])]' ;
%point_x1=x1(find(y21==0));
point_x2=x1(y22==0);
%point_y1=Y21(x1=0);
%point_y2=y22(x1=0);

%% now on 07/02/2022 we will see the intersection points

for i = 1 : size(A,1)
    ai= A(i,:);
    bi= B(i,:);
    int = [0, 0];
    for j = i+1 : size(A,1)
        aj = A(j,:);
        bj = B(j,:);
        a = [ai ; aj];
        b = [bi ; bj];
        x = inv(a)*b;
        if x < 0
            point = [];
        else
            point = x';
        end
        int = [int;point];
    end
    %for z = 1: size (int,1)
    for i = 1 : size (A,1)
        k = 0;
        for j = 1 : size(A,2)
            k = k + A(i,j)*int(i,j)
        end
        if x >= b(i)
            int(i)= [];
        end
    end
    
end


plot (x1,y21,'-r',x1,y22,'-b');


xlabel('x axis')
ylabel('y axix')