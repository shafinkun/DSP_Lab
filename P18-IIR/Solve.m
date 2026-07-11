t = 0:0.01:2; 
x = sin(2*pi*2*t) + 0.5*randn(size(t));

[b, a] = butter(4, 0.2); % 4th order LPF
x_filt = filter(b, a, x);

plot(t, x, 'c', t, x_filt, 'k', 'LineWidth', 1.5);
title('IIR Butterworth Filtering'); 
legend('Noisy', 'Filtered');