clc;
clear all;
n=0:360;
analog=sind(n);
subplot(1,2,1);
plot(n,analog,'b');

xlabel('n');
ylabel('Amplitude');
title('Analog-Signal');

t=0:10;
digital=sin(t);
subplot(1,2,2);
stem(t,digital,'b');
figure('name','Digital');
xlabel('t');
ylabel('Amplitude');
title('Digital-Signal');