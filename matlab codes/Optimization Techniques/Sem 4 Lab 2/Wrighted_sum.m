clc;
clear;
% max z1 = 2x1 + 3x2 ;  z2 = 4x1 - 2x2 ;  z3 = 5x1 + 7x2;
% subject to  x1 + x2 >= 4 ; 3x1 + 4x2 <= 5 ; x1, x2 >= 0;

m = 3; % number of objective functions
C = [ 2, 3
      4, -2
      5, 7];
 least = sum(C)/m;
 %% apply simplex after this 
