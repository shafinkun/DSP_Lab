t = 0:0.001:0.2;

f1 = 10;
f2 = 50;
fs = 40;

% Continuous signals
x1 = cos(2*pi*f1*t);
x2 = cos(2*pi*f2*t);

% Sampled signals
n = 0:1/fs:0.2;
y1 = cos(2*pi*f1*n);
y2 = cos(2*pi*f2*n);


plot(t,x1,'b')
hold on
plot(t,x2,'r--')

stem(n,y1,'filled')
stem(n,y2,'g')

title('Aliasing Demonstration')
xlabel('Time (s)')
ylabel('Amplitude')
legend('10 Hz Signal','50 Hz Signal','10 Hz Samples','50 Hz Samples')