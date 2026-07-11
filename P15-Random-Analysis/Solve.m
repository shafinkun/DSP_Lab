noise = randn(1, 10000);

subplot(3,1,1); 
plot(noise(1:200)); 
title('Time Domain');

subplot(3,1,2); 
histogram(noise, 50); 
title('Amplitude Distribution');

subplot(3,1,3); 
pwelch(noise); 
title('Power Spectral Density');