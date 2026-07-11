t = 0:0.001:0.1; 
f = 20; 
x_orig = sin(2*pi*f*t);

fs = 100; 
ts = 0:1/fs:0.1; 
x_samp = sin(2*pi*f*ts);
x_recon = interp1(ts, x_samp, t, 'spline');

plot(t, x_orig, 'k', 'LineWidth', 2); 
hold on;
stem(ts, x_samp, 'r');
plot(t, x_recon, 'b--', 'LineWidth', 1.5);
title('Signal Reconstruction'); 
legend('Original', 'Samples', 'Reconstructed');