clc
clear
%our given range
y = 1 : 0.01 : 2; 

%checking for (a) g1(x) = x - x^3 -4*x^2 +10
g=@(x) x-x^3-4*x+10;   
syms x;
g1 = diff(g(x));
for i=1:length(x)
    if abs(subs(g1,y(i)))<1
        j = j + 1 ;
        continue;
    else
        fprintf('given (a) g1(x) = x - x^3 -4*x^2 +10 is not valid for dinding the fixed point\n');
        break;
    end
end
if(j>length(x))
    fprintf('given (a) g1(x) = x - x^3 -4*x^2 +10 is a valid function\n')
end

%checking for (b) g2(x) = root((10/x)-4*x)
g=@(x) sqrt((10/x)-4*x);      
syms x;
g1 = diff(g(x));

for i=1:length(x)
    if abs(subs(g1,y(i)))<1
        j = j + 1 ;
        continue;
    else
        fprintf('given (b) g2(x) = root((10/x)-4*x) is not valid for dinding the fixed point\n');
        break;
    end
end
if(j>length(x))
    fprintf('given (b) g2(x) = root((10/x)-4*x) is a valid function\n')
end

%checking for (c) g3(x) = 0.5 * root( 10- x * 3 )
g=@(x)  0.5 * root( 10- x * 3 );      
syms x;
g1 = diff(g(x));
j=1;
for i=1:length(x)
    if abs(subs(g1,y(i)))<1
        j = j + 1 ;
        continue;
    else
        fprintf('given (c) g3(x) = 0.5 * root( 10- x * 3 ) is not valid for dinding the fixed point\n');
        break;
    end
end
if(j>length(x))
    fprintf('given (c) g3(x) = 0.5 * root( 10- x * 3 ) is a valid function\n')
end

%checking for (d) g4(x) = sqrt( 10 / ( 4 + x ) )
g=@(x)  sqrt( 10 / ( 4 + x ) );      
syms x;
g1 = diff(g(x));
j=1;
for i=1:length(x)
    if abs(subs(g1,y(i)))<1
        j = j + 1 ;
        continue;
    else
        fprintf('given (d) g4(x) = sqrt( 10 / ( 4 + x ) ) is not valid for dinding the fixed point\n');
        break;
    end
end
if(j>length(x))
    fprintf('given (d) g4(x) = sqrt( 10 / ( 4 + x ) ) is a valid function\n')
end

%checking for (e) g5(x) = x - (x^3 + 4*x^2 - 10 )/( 3*x^2 + 8*x)
g=@(x)  x - (x^3 + 4*x^2 - 10 )/( 3*x^2 + 8*x);      
syms x;
g1 = diff(g(x));
j=1;
for i=1:length(x)
    if abs(subs(g1,y(i)))<1
        j = j + 1 ;
        continue;
    else
        fprintf('given (e) g5(x) = x - (x^3 + 4*x^2 - 10 )/( 3*x^2 + 8*x) is not valid for dinding the fixed point\n');
        break;
    end
end
if(j>length(x))
    fprintf('given (e) g5(x) = x - (x^3 + 4*x^2 - 10 )/( 3*x^2 + 8*x) is a valid function\n')
end

