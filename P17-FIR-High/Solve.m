t = 0:0.01:2;
x = sin(2*pi*5*t);
x_dc = x + 3; % Add DC offset of 3

b = fir1(30, 0.1, 'high');
x_filtered = filter(b, 1, x_dc);

subplot(2,1,1); 
plot(t, x_dc); 
title('Signal with DC Offset'); 
ylim([-1 5]);

subplot(2,1,2); 
plot(t, x_filtered); 
title('Filtered Signal'); 
ylim([-2 2]);