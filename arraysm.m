clc;
clear all;
array=input('Enter number');
sum=0;
for i=1:length(array)
    sum=sum+array(1,i);
end
fprintf('Array sum is %d',sum);
