% Function 1
n = -10:1:10;
a = 0.8;
x1 = a.^n;

% Function 2
x2 = sin(n);

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Constants a1, a2
a1 = 2;
a2 = 5;

% Find the DTFT of both functions
x1_w = dtft(x1, 1024);
x2_w = dtft(x2, 1024);

x_rhs = abs(fftshift((a1 * x1_w) + (a2 * x2_w)));

% Linearity proof
x1_prime = a1 * x1;
x2_prime = a2 * x2;
x_lhs = abs(fftshift(dtft((x1_prime + x2_prime), 1024)));

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

