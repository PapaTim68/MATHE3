function [S] = MFFT(N,x)
    if (N == 1)
        S = x;
    else
        g = MFFT(N/2,x(2:2:end));
        u = MFFT(N/2,x(1:2:end));
        W = @(k) exp(-2*1i*k/N);
       for k = 1:(N/2+1)+1(
        S(k) = g(k) + u(k) * W(k);
        S(k+N/2) = g(k) - u(k) * W(k);
       end
    end
end

