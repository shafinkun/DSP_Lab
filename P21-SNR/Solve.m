t = 0:0.01:5; 
clean = sin(2*pi*1*t);
noisy = clean + 0.5*randn(size(t));

[b, a] = butter(4, 0.1);
filtered = filter(b, a, noisy);

snr_before = snr(clean, noisy - clean);
snr_after = snr(clean, filtered - clean);

fprintf('SNR Before: %.2f dB\nSNR After: %.2f dB\n', snr_before, snr_after);
figure; plot(t, noisy, 'r', t, filtered, 'b', 'LineWidth', 1.5); title('SNR Improvement');