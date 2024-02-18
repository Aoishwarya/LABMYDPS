clc;
clear all;
%X=[2 1+1i 0 1-1i];X=[3 -i 1 i]
X=input('Enter X : ' );
N=length(X);
x=zeros(1,N);
for n=1:N
    sum=0;
    for k=1:N
        sum=sum+(1/N)*X(k)*exp(1i*2*pi*(k-1)*(n-1)/N);
    end
    x(n)=sum;
end
x

subplot(3,2,1);
stem(x);
xlabel('n');
ylabel('Amplitude');
title('IDFT');
m=abs(x);
m
subplot(3,2,2);
stem(m);
xlabel('n');
ylabel('Amplitude');
title('Amplitude IDFT');

p=angle(x);
disp(p);
subplot(3,2,3);
stem(p);
    xlabel('n');
ylabel('Amplitude');
title('phase IDFT');   
