
function a=cirswiout(x)

a=[];
N=length(x);
a=[a x(N)];
for i=1:N-1
    a=[a x(i)];
end

end
