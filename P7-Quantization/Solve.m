t = 0:0.01:2;
x = 5*sin(2*pi*1*t);

bits = 4;
L = 2^bits;

vmax = max(x);
vmin = min(x);

delta = (vmax - vmin)/L;

quantized = round((x - vmin)/delta)*delta + vmin;

plot(t, x, 'b')
hold on
stairs(t, quantized, 'r')

title('Uniform Quantization')
xlabel('Time (s)')
ylabel('Amplitude')
legend('Original Signal', 'Quantized Signal')
grid on