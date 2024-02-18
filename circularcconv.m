clc;
clear all;
x=input('Enter x');
h=input('Enter h');
l1=length(x);
l2=length(h);
N=max(l1,l2);
y=cconv(x,h,N);
disp(y);