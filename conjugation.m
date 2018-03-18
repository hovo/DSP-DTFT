% Function 1
n = 0:1:10;
w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);
x_n = sin(n);

% X*(n)
x_lhs = fft(conj(x_n), 1024);

% X*(-w)
x_rhs = conj(fliplr(fft(x_n, 1024)));


% Plot
figure
subplot(4,1,1);
plot(w_prime, abs(x_rhs));
xlabel('frequency f');
ylabel('magnitude');

subplot(4,1,2);
plot(w_prime, abs(x_lhs));
xlabel('frequency f');
ylabel('magnitude');

subplot(4,1,3);
plot(w_prime, angle(x_rhs));
xlabel('frequency f');
ylabel('phase');

subplot(4,1,4);
plot(w_prime, angle(x_lhs));
xlabel('frequency f');
ylabel('phase');
