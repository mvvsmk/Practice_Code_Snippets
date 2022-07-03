clc 
clear all
n=-10:0.1:10;
x=n>=-3;
y=n>=3;
r=x-y;
subplot(1,2,1);
stem(n,r);
xlabel('time');
ylabel('amplitude');
title('rectangular pulse');
legend('402006039');
z=0
for w=-40*pi:0.001:40*pi
    z=z+1
    p(z)=sum(r.*exp(-j+w.*n));
end
    w=-40*pi:0.001:40*pi
    subplot(1,2,2);
    plot(w,p);
    xlabel('frequency');
    ylabel('amplitude');
    title('DTFT');
    legend('402006039');
    xlim([-100 100])
