[b, a] = butter(5, 0.3); % Cutoff at 0.3*Nyquist

figure;
freqz(b, a);
title('Frequency Response of Butterworth LPF');