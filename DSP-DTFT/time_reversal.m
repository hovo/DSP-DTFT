% Function 1
n = -10:1:10;
a = 0.8;
x1 = a.^n;

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Time reversal x(-n)
n_reversed = n; % don't need this
x1_reversed = fliplr(x1);

% DTFT of reversed signal
x_lhs = abs(fftshift(dtft(x1_reversed, 1024)));

% X(-w) 
x_rhs = fliplr(abs(fftshift(dtft(x1, 1024))));

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

