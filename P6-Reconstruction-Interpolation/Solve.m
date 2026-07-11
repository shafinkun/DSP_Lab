f = 10;
t = 0:0.001:0.2;

original = sin(2*pi*f*t);

fs = 50;
ts = 0:1/fs:0.2;
sample = sin(2*pi*f*ts);

reconstruction = interp1(ts, sample, t, 'spline');

plot(t, original, 'g')
hold on
stem(ts, sample, 'filled', 'r')
plot(t, reconstruction, 'b')

title('Signal Reconstruction')
legend('Original', 'Sampled', 'Reconstructed')
xlabel('Time (s)')
ylabel('Amplitude')
grid on