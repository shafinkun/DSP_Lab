x = [1, 2, 3, 4]; 
N = length(x);
X_manual = zeros(1, N);

for k = 0:N-1
    for n = 0:N-1
        X_manual(k+1) = X_manual(k+1) + x(n+1) * exp(-1i*2*pi*k*n/N);
    end
end
X_fft = fft(x);

figure;
subplot(2,1,1); 
stem(0:N-1, abs(X_manual)); 
title('Manual DFT Magnitude');

subplot(2,1,2); 
stem(0:N-1, abs(X_fft)); 
title('Built-in FFT Magnitude');