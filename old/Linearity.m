% Function 1
n = 0:1:10;
a = 0.5;
x1_n = a.^n;
w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Function 2
x2_n = sin(n);

% Constants a1, a2
a1 = 2;
a2 = 5;

% Find the DTFT of both functions
x1_dtft = dtft(x1_n);
x2_dtft = dtft(x2_n);
x_rhs = abs((a1 * x1_dtft) + (a2 * x2_dtft));

% Linearity proof
x1_prime = a1 * x1_n;
x2_prime = a2 * x2_n;
x_lhs = abs(dtft(x1_prime + x2_prime));

% Plot
figure
subplot(2,1,1);
plot(w_prime, x_rhs);
title('frequency vs magnitude for a1*x1(w) + a2*x2(w)');
xlabel('frequency f');
ylabel('magnitude');

subplot(2,1,2);
plot(w_prime, x_lhs);
title('frequency vs magnitude for a1*x1(n) + a2*x2(n)');
xlabel('frequency f');
ylabel('magnitude');

