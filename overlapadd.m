clc;
clear all;
x=[1 2 3 3 2 1 -1 -2 -3 5 6 -1 2 0 2 1];
h=[3 2 1 1];
lx=length(x);
M=length(h);
N=2.*M-1;
L=N-M+1;

h=[h zeros(1,L-1)];
xd=reshape(x,[lx/L,L]);
xd

   
c=zeros(1,lx+(M-1));
for i=1:L
       z=[]; 
    xd1=xd(:,i);
    xd1=xd1'
    xd1=[xd1 zeros(1,M-1)];
    xd1

    
    for j=1:N
        tem=circshift(xd1,[0,j-1]);
        z=[z tem'];
        
    end
    B=z*h'
    B=B'
for k=1:N
    c(1,(L*(i-1)+k))=   c(1,(L*(i-1)+k))+B(1,k);
        end
        end
        c 