function a=DFT(x)
N=length(x)
y=zeros(1,N)
for k=1:N
    for n=1:N
    y(1,k)=y(1,k)+x(n).exp((-j*2*pi(n-1)*(k-1))/N);
    end 
end
subplot(2,2,1)
stem(y)
title('DFT');
legend('402006041')
xlabel('k')
ylabel('Amplitude')
z=fft(x);
subplot(2,2,2)
stem(z);
title('DFT  using inbuilt function FFT')
legend('402006041')
xlabel('k')
ylabel('Amplitude')
q=angle(z);
subplot(2,2,3)
stem(q)
title('Phase Spectrum')
legend('402006041')
xlabel('k')
ylabel('Phase')
p=abs(z)
subplot(2,2,4)
stem(p)
title('Magnitude Spectrum')
legend('402006041')
xlabel('k')
ylabel('Magnitude')
