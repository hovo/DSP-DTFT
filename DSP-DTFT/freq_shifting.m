% Function 2
n = -10:1:10;
x = sin(n);

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

w_o = 3;
x_lhs = dtft((exp((1j)*w_o*n) .* x), 1024);
x_rhs = [zeros(1, w_o) fftshift(dtft(x, 1024))];

% Plot
figure
subplot(2,2,1);
plot(abs(x_lhs));
title('Magnitude of e^j*w_o*n x(n)');

subplot(2,2,2);
plot(angle(x_lhs));
title('Angle of e^j*w_o*n x(n)');

subplot(2,2,3);
plot(abs(x_rhs));
title('Magnitude of X(w-w_o)');

subplot(2,2,4);
plot(angle(x_rhs));
title('Angle of X(w-w_o)');