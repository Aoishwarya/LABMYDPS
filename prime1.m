clc;
clear all;
num=input('Enter number');
count=0;
for i=2:num-1
    if(mod(num,i)==0)
        count=count+1;
        break;
    end 
end
  if(count==0)
      fprintf('Prime number');
  else
          fprintf('Not Prime number');
  end