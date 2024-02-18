clc;
clear all;
a=input('Enter 1st number');
disp(a);
b=input('Enter 2nd number');
c=input('Enter 3rd number');

if((a>b)&& (a>c))
    fprintf('%d is Greater',a);
else if((b>a)&& (b>c))
           fprintf('%d is Greater',b);
    else
           fprintf('%d is Greater',c);
    end
end