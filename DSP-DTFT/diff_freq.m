% Function 1
n = -10:1:10;
a = 0.8;
x1 = a.^n;

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

x_lhs = dtft((n .* x1), 1024);
x_rhs = (1i) .* diff(dtft(x1, 1024));

% Plot
figure
subplot(2,2,1);
plot(abs(fftshift(x_lhs)));
title('');

subplot(2,2,2);
plot(angle(fftshift(x_lhs)));
title('');

subplot(2,2,3);
plot(abs(fftshift(x_rhs)));
title('');

subplot(2,2,4);
plot(angle(fftshift(x_rhs)));
title('');

