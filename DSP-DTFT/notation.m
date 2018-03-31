% Function 1
n = -10:1:10;
a = 0.8;
x1 = a.^n;

% Function 2
x2 = sin(n);

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

figure
subplot(2,1,1);
x1_w = dtft(x1, 1024);
plot(w_prime, abs(fftshift(x1_w)));
title('Magnitude of x1(n)');
xlabel('frequency');
ylabel('magnitude');

subplot(2,1,2);
x2_w = dtft(x2, 1024);
plot(w_prime, abs(fftshift(x2_w)));
title('Magnitude of x2(n)');
xlabel('frequency');
ylabel('magnitude');