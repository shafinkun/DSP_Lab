n = -10:10;
impulse = (n == 0);
step = (n >= 0);
ramp = step .* n;

subplot(3,2,1);
stem(n, impulse, 'filled', 'r');
title('Unit Impulse Signal');

subplot(3,2,2);
stem(n, step, 'filled', 'g');
title('Unit Step Signal');

subplot(3,2,3);
stem(n, ramp, 'filled', 'b');
title('Ramp Signal');

t = 0:.5:20;
f = 0.1;

sin_wave = sin(2 * pi * f * t);
cos_wave = cos(2 * pi * f * t);

subplot(3,2,4);
stem(t, sin_wave, 'filled', 'r');
title('Sine Wave');

subplot(3,2,5);
stem(t, cos_wave, 'filled', 'g');
title('Cosesine Wave');