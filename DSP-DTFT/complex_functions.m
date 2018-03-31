% Function 1
n = -10:1:10;
a = 0.8;
x1 = a.^n;

% Function 2
x2 = sin(n);

% Plot
figure
subplot(2,1,1)
stem(n, x1);
title('plot of x1(n)');
xlabel('time n');
ylabel('magnitude');

subplot(2,1,2)
stem(n, x2);
title('plot of x2(n)');
xlabel('time n');
ylabel('magnitude');

