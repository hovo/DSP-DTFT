% Function 2
n = -10:1:10;
x = sin(n);

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);


% X*(n)
x_lhs = dtft(conj(x), 1024);

% X*(-w)
x_rhs = conj(fliplr(dtft(x, 1024)));


% Plot
figure
subplot(4,1,1);
plot(w_prime, abs(x_rhs));
title('magnitude vs frequncy of x_rhs');
xlabel('frequency f');
ylabel('magnitude');

subplot(4,1,2);
plot(w_prime, abs(x_lhs));
title('magnitude vs frequncy of x_lhs');
xlabel('frequency f');
ylabel('magnitude');

subplot(4,1,3);
plot(w_prime, angle(x_rhs));
title('angle vs frequency of x_rhs');
xlabel('frequency f');
ylabel('angle');

subplot(4,1,4);
plot(w_prime, angle(x_lhs));
title('angle vs frequency of x_lhs');
xlabel('frequency f');
ylabel('angle');
