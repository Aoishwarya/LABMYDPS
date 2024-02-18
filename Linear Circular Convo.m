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
z=[z x'];
z
for i=1:N-1
    x=LinChift(x);
    z=[z x'];
end
y=z
h'
y*h'