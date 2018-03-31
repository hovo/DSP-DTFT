%{
Compute the DTFT of singal x with N points
%}
function x_w = dtft(x,N)
    % Initialize empty array for freq spec
    x_w = zeros(1,N);
    % Iterate K times, where k=1...N
    for k=1:N
       % Iterate length(x) times
       for n=1:length(x)
            x_w(k) =  x_w(k) + x(n)*exp(1i*-2*pi*(n-1)*(k-1)/length(x));
       end
    end

