clc;
clear all;
n=-10:10;
unit_step=(n>=0);
subplot(4,1,1);

stem(n,unit_step);
xlabel('n');
ylabel('Unit_step');


unit_impulse=(n==0);
subplot(4,1,2);

stem(n,unit_impulse);
xlabel('n');
ylabel('Unit_impulse');


unit_ramp=n.*(unit_step);
subplot(4,1,3);
stem(n,unit_ramp);
xlabel('n');
ylabel('Unit_ramp');
%for increasing
unit_exp=exp(0.9*n);    


subplot(4,1,4);
stem(n,unit_exp);
xlabel('n');
ylabel('Unit_exp');
%for decreasing
unit_exp=exp(-0.9*n);
subplot(4,1,4);
stem(n,unit_exp);
xlabel('n');
ylabel('Unit_exp');


