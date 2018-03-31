%{
Compute the DTFT of singal x with N points
%}
function x_w= dtft(x,N)
    x_w = zeros(1,N);
    for k=1:N
        for m = 1:length(x)
            x_w(k) = x_w(k) + x(m)*exp((1i)*-2*pi*(m-1)*(k-1)/N);
        end
    end

