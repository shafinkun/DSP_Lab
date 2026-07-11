n = -3:3;
x = [2, 4, 1, 3, 5, 2, 1]; 
x_rev = fliplr(x);

x_even = 0.5 * (x + x_rev);
x_odd = 0.5 * (x - x_rev);

x_reconstructed = x_even + x_odd;

subplot(2,2,1); 
stem(n, x, 'filled', 'b'); 
title('Original x[n]');

subplot(2,2,2); 
stem(n, x_even, 'filled', 'r'); 
title('Even xe[n]');

subplot(2,2,3); 
stem(n, x_odd, 'filled', 'g'); 
title('Odd xo[n]');

subplot(2,2,4); 
stem(n, x_reconstructed, 'filled', 'w'); 
title('Reconstructed');