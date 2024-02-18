% Define a sequence
x = [1, 2, 3, 4, 5,6,7,8];

% Circular time reversal
N = length(x);
y = zeros(1, N);

for n = 1:N
    y(n) = x(mod(N-n+1 , N) + 1);
end

% Display the original and reversed sequences
disp('Input sequence:');
disp(x);

disp('Circular Time-Reversed:');
disp(y);

y1=fliplr(x);
y1
