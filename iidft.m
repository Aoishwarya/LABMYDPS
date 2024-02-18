function y=iidft(X);

N=length(X);
x=zeros(1,N);
for n=1:N
    sum=0;
    for k=1:N
        sum=sum+(1/N)*X(k)*exp(1i*2*pi*(k-1)*(n-1)/N);
    end
    x(n)=sum;
end
y=x
end