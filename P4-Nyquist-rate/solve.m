f = 10;
t = 0:0.001:0.2;
sine_wave = sin(2*pi*f*t);

nyquist_f = 20;
nyquist_n = 0:1/nyquist_f:0.2;
nyquist_sine_wave = sin(2*pi*nyquist_n*f);

over_f = 50;
over_n = 0:1/over_f:0.2;
over_sine_wave = sin(2*pi*over_n*f);

under_f = 15;
under_n = 0:1/under_f:0.2;
under_sine_wave = sin(2*pi*under_n*f);

subplot(3,1,1);
plot(t, sine_wave, 'k');
hold on;
stem(nyquist_n, nyquist_sine_wave, 'filled', 'b');

subplot(3,1,2);
plot(t, sine_wave, 'k');
hold on;
stem(over_n, over_sine_wave, 'filled', 'g');

subplot(3,1,3);
plot(t, sine_wave, 'k');
hold on;
stem(under_n, under_sine_wave, 'filled', 'r');