t = 0:0.01:1;

A = 1;
f = 2;

x = A*sin(2*pi*f*t);

bits = [2 4 8];

for i = 1:3

    L = 2^bits(i);

    delta = 2/L;

    quantized = round((x+1)/delta)*delta - 1;

    subplot(3,1,i)

    plot(t,x,'b')
    hold on
    stairs(t,quantized,'r')

    title([num2str(bits(i)),'-bit Quantization'])
    legend('Original','Quantized')
    grid on

end