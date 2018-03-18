% Function 1
n = 0:1:10;
a = 0.5;
x1_n = a.^n;
w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% x(n-k) where k=2 -> shift right 2 units
k = 2;

% zero pad 2 units
n_prime = 0:1:(10+k);
x1_n_prime = [zeros(1,k) x1_n];

x_rhs = dtft(x1_n_prime);
x_lhs = exp(-(1j)*w_prime*k) .* dtft(x1_n);

% Plot
figure
subplot(2,1,1);
plot(n, x1_n);
title('time vs magnitude for x(n) = 0.5^n u(n)')
xlabel('time n');
ylabel('magnitude');

subplot(2,1,2);
plot(n_prime, x1_n_prime);
title('time vs magnitude for x(n-2)');
xlabel('time n');
ylabel('magnitude');


% Plot
figure
subplot(2,1,1);
plot(w_prime, abs(x_rhs));
title('frequency vs magnitude for x(n-2)');
xlabel('frequency f');
ylabel('magnitude');

subplot(2,1,2);
plot(w_prime, abs(x_lhs));
title('frequency vs magnitude for e^jwk X(w)');
xlabel('frequency f');
ylabel('magnitude');