clc;
clear all;
%x=[1  1 1 0]; % [1 0 0 1]
x= input('Enter x : ');
N=length(x);
X=zeros(1,N);
for k=1:N
    sum=0;
    for n=1:N
        sum=sum+ x(n)*exp(-1j*2*pi*(k-1)*(n-1)/N);
    end
    X(k)=sum;
end
X

subplot(3,2,1);
stem(X);
xlabel('n');
ylabel('Amplitude');
title('DFT');
m=abs(X);
m
subplot(3,2,2);
stem(m);
xlabel('n');
ylabel('Amplitude');
title('Amplitude DFT');

p=phase(X);
disp(p);
subplot(3,2,3);
stem(p);
    xlabel('n');
ylabel('Amplitude');
title('phase DFT');    