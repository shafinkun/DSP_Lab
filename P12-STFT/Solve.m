fs = 1000; 
t = 0:1/fs:2;

x_stat = sin(2*pi*100*t) + sin(2*pi*200*t);
x_chirp = chirp(t, 0, 2, 400);


subplot(2,1,1); 
spectrogram(x_stat, 256, 128, 256, fs, 'yaxis'); 
title('Stationary');
subplot(2,1,2); 
spectrogram(x_chirp, 256, 128, 256, fs, 'yaxis'); 
title('Chirp (Non-stationary)');