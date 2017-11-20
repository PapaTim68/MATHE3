function [S] = DFT(N,x)
    su = size(N);
    S = size(N);
    for n = 0: length(x)
        for k = 1:N
            su(k) = x(k)*exp(-i*2*pi/N*k*n);
        end
        S(k) = 1/N * sum(su);
    end
end

