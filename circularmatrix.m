clc;
clear all;
close all;
z=[];
x=input('Enter the array:');
l1=length(x);
y=input('enter the array:');
l2=length(y);

N=max(l1,l2);
if(l1>l2)
h=[h zeros(1,N-l2)];
else
  x=[x zeros(1,N-l1)];
end

for i=1:N
    tmm=circshift(x,[0,i-1]);
    z=[z,tmm'];
end
z
y=y'
y1=z*y
y1
C = zeros(size(z, 1), size(y, 2));

for i = 1:size(z, 1)
    for j = 1:size(y, 2)
        for k = 1:size(z, 2)
            C(i, j) = C(i, j) + z(i, k) * y(k, j);
        end
    end
end
C
