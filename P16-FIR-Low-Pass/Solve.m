t = 0:0.01:2; 
x_clean = sin(2*pi*2*t); % 2 Hz signal
noise = 0.5 * sin(2*pi*20*t); % 20 Hz noise
x_noisy = x_clean + noise;

order = 30; 
cutoff = 0.2; % Normalized freq (0 to 1)
b = fir1(order, cutoff);
x_filtered = filter(b, 1, x_noisy);

subplot(2,1,1); 
plot(t, x_noisy); 
title('Noisy Signal');

subplot(2,1,2); 
plot(t, x_filtered); 
title('Filtered Signal (FIR LPF)');