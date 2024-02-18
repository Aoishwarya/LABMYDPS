clc;
clear all;
for i=1:3
    for j=1:3
        m=input('Enter matrix element');
        a(i,j)=m;
    end
end
a
for i=1:3
    for j=1:3
        m=input('Enter matrix element');
        b(i,j)=m;
    end
end
b
c=zeros(size(a,1),size(b,2));
for i=1:size(a,1)
    for j=1:size(b,2)
        for k=1:size(a,2)
            c(i,j)=c(i,j)+a(i,k)*b(k,j);
        end
    end
end
c
a*b
a.*b
disp(c')
