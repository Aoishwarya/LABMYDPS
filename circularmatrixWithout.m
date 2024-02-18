clc;
clear all;
z=[];

%x=[2 1 2 1];
x=[2 1 2 1];
l1=length(x);
h=[1 2 3 4];
l2=length(h);

N=max(l1,l2);
if(l1>l2)

        h=[h zeros(1,N-l2)];
  
else

        x=[x zeros(1,N-l1)];
  
end
z=[z x'];
z

for i=1:N-1
    x=cirswiout(x);
    z=[z x'];
end
y=z

h';
y*h'
%Enter the array[2 1 2 -1]
%Enter the array:[1 2 3 4]

%Ans  10    10     6    14