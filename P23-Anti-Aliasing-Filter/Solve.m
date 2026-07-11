t = 0:0.001:1; 
x = sin(2*pi*5*t) + sin(2*pi*50*t); % 5 Hz and 50 Hz

x_down_bad = x(1:10:end); % fs drops from 1000 to 100

b = fir1(20, 0.1); 
x_filt = filter(b, 1, x);
x_down_good = x_filt(1:10:end);

subplot(2,1,1); plot(x_down_bad); 
title('Downsampled without Filter (Aliased)');

subplot(2,1,2); plot(x_down_good); 
title('Filtered then Downsampled (Clean)');