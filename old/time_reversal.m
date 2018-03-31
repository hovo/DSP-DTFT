% Function 1 0.5^n u(n)
n = 0:1:10;
a = 0.5;
x1_n = a.^n;
w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Time reversal x(-n)
n_reversed = -10:1:0;
x1_n_reversed = fliplr(x1_n);

% DTFT of reversed signal
x_lhs = abs(dtft(x1_n_reversed));

% X(-w) 
x_rhs = fliplr(abs(dtft(x1_n)));

% Plot
figure
subplot(2,1,1);
plot(w_prime, x_rhs);
title('frequency vs magnitude of x(-n)');
xlabel('frequency f');
ylabel('magnitude');

subplot(2,1,2);
plot(w_prime, x_lhs);
title('frequency vs magnitude X(-w)');
xlabel('frequency f');
ylabel('magnitude');

