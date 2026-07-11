load handel.mat; % Built-in MATLAB audio
x = y; % signal
t = (0:length(x)-1)/Fs;

figure;
subplot(2,1,1); plot(t, x); title('Audio Time Domain');
subplot(2,1,2); spectrogram(x, 256, 128, 256, Fs, 'yaxis'); title('Audio STFT');