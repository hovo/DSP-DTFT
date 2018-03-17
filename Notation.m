% Function 1
n = 0:1:10;
a = 0.5;
x1_n = a.^n;
w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Function 2
x2_n = sin(n);

% Function 1 - Plot
figure
subplot(2,1,1);
plot(n, x1_n);
xlabel('time t');
ylabel('magnitude');

subplot(2,1,2);
x1_w = abs(dtft(x1_n));
plot(w_prime, x1_w);
xlabel('frequncy');
ylabel('magnitude');

% Function 2 - Plot
figure
subplot(2,1,1);
plot(n1, x2_n);
xlabel('time t');
ylabel('magnitude');

subplot(2,1,2);
x2_w = abs(dtft(x2_n));
plot(w_prime, x2_w);
xlabel('frequncy');
ylabel('magnitude');
