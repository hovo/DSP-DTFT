% Function 1
n = -10:1:10;
a = 0.8;
x1 = a.^n;

% Function 2
x2 = sin(n);

w = 2*pi * (0:(1024-1)) / 1024;
w_prime = unwrap(fftshift(w) - 2*pi);

% Take the conjugate of x2 function
x2_conj = conj(x2);

lhs = x1.*x2_conj;

x1_w = dtft(x1, 1024);
x2_conj_w =  dtft(x2_conj, 1024);

rhs = 1/(2*pi).*x1_w.*x2_conj_w;

plot(abs(fftshift(rhs)));


