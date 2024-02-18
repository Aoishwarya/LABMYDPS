clc;
clear all;
x=[1 2 -2 3];
N=length(x);
y=zeros(1,N);

k=input('Enter shift');
for n=1:N
    y(n)=x(mod(n-k-1,N)+1);
end
y