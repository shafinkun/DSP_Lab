t = 0:0.01:2;

A = 5;
f = 1;

x = A*sin(2*pi*f*t);

bits = 4;
L = 2^bits;

vmax = max(x);
vmin = min(x);

delta = (vmax-vmin)/L;

quantized = round((x-vmin)/delta)*delta + vmin;

error = x - quantized;

mse = mean(error.^2);

disp(['MSE = ', num2str(mse)])

plot(t,error)
title('Quantization Error')
xlabel('Time (s)')
ylabel('Error')
grid on