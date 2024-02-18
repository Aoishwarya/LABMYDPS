clc;
clear all;
z=[];
x=[2 1 2 1];
h=[1 2 3 4];
l1=length(x);
l2=length(h);
N=l1+l2-1;
y=conv(x,h);
y'