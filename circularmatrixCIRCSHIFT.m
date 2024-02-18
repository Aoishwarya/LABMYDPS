clc;
clear all;
x=input('Enter x sequence');%2 1 2 1
h=input('Enter h sequence');%1 2 3 4
circ=[];
l1=length(x);
l2=length(h);
%N=max(l1,l2);
if(l1>=l2)
    N=l1;
else 
    N=l2;
end
    
    
if(l1>l2)
    h=[h,zeros(1,N-l2)];
else
    x=[x, zeros(1,N-l1)];
end
for i=1:N
    tm=circshift(x,[0,i-1]);
    circ=[circ,tm'];
end
y1=circ
y2=h'
y1*y2
c=zeros(size(y1,1),size(y2,2));
for i=1:size(y1,1)
    for j=1:size(y2,2)
        for k=1:size(y1,2)
            c(i,j)=c(i,j)+y1(i,k)*y2(k,j);
        end
    end
end
c

    

    