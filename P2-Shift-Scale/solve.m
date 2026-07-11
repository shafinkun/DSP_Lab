x = [1, 2, 3, 4];
n = 0:3; 

n_shift = n + 2; 
x_scaled = 2 .* x;

n_rev = -fliplr(n);
x_rev = fliplr(x);

subplot(2,2,1); 
stem(n, x, 'filled', 'b'); 
title('Original x[n]'); 

subplot(2,2,2); 
stem(n_shift, x, 'filled', 'r'); 
title('Shifted (Delay 2)'); 

subplot(2,2,3); 
stem(n, x_scaled, 'filled', 'g'); 
title('Scaled (x2)'); 

subplot(2,2,4); 
stem(n_rev, x_rev, 'filled', 'm'); 
title('Reversed x[-n]'); 