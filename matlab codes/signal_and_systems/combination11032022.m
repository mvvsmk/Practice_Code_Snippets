clc;
clear;
close all;
% x(t) = te^-t ; -1<t<3;
t = -1 : 0.01 : 3;
t1 = -3 : 0.01 : 1;
t2 = -0.5 : 0.005 : 1.5;
t3 = -2 : 0.02 : 6;
t4 = -3 : 0.01 : 1; %%error
t5 = t+3; %%error
x = t.*exp(-t);
x1 = flip (x);
x2 = (2.*t2).*exp(-2.*t2);
x3 = (0.5.*t3).*exp(-0.5.*t3);
x4 = (t).*exp(-1*(t));
x5 = (t).*exp(-1*(t));

subplot(2,3,1)
plot(t,x);
title('x(t)');

subplot(2,3,2)
plot(t1,x1);
title('x(-t)');

subplot(2,3,3)
plot((0.5).*t,x2);
title('x(2t)');

subplot(2,3,4)
plot(((2).*t),x3);
title('x(0.5t)');

subplot(2,3,5)
plot((t-2),x4);
title('x(t-2)');

subplot(2,3,6)
plot((t+3),x5);
title('x(t+3)');