% Function 1
n = 0:1:10;
a = 0.5;
x1_n = a.^n;
w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Function 2
x2_n = sin(n);

% Product of DTFT's both signals 
x1_dtft = abs(dtft(x1_n));
x2_dtft = abs(dtft(x2_n));
x_rhs = x1_dtft .* x2_dtft;

% Compute onvolution x1_n * x2_n
x_lhs = conv(x1_n, x2_n);

% Plot
figure
subplot(2,1,1);
plot(w_prime, x_rhs);
title('frequency spectrum of x1(n)*x2(x)');
xlabel('frequency f');
ylabel('magnitude');

subplot(2,1,2);
plot(w_prime, abs(dtft(x_lhs)));
title('X1(w)X2(w)');
xlabel('frequency f');
ylabel('magnitude');
