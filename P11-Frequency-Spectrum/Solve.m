fs = 1000; 
t = 0:1/fs:1-1/fs;
x = sin(2*pi*50*t) + 0.5*sin(2*pi*120*t);

X = fft(x);
N = length(X);
f = (0:N-1)*(fs/N);
mag = abs(X)/N;

figure;
plot(f(1:N/2), mag(1:N/2)); % Plot up to Nyquist limit
title('Single-Sided Amplitude Spectrum');
xlabel('Frequency (Hz)'); ylabel('Magnitude');