clc;
clear all;
%x1=[1 2 3 4];
%x2=[2 3 4 1]; a=3 b=4

x1=[1 2 3 4];
x2=[2 1 2 1];
a1=2;
a2=3;
X1=ddft(x1);
X2=ddft(x2);
y1=abs(a1*X1+a2*X2);
disp(y1);
y2=abs(fft(a1*x1+a2*x2));
disp(y2);
if(y1==y2)
    disp('Linear');
else
    disp('Not');
end

