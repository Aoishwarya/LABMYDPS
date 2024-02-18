clc;
clear all;
z=[];
x=[2 1 2 1];
h=[1 2 3 4];
l1=length(x);
l2=length(h);
N=l1+l2-1;
h=[h zeros(1,N-l2)];
x=[x zeros(1,N-l1)];
for i=1:N
    tem=circshift(x,[0,i-1]);
    z=[z tem'];
end
y=z
h'
y*h'