x = [1 2 3 4]; 
y = [0 1 2 3];

auto_c = xcorr(x, x);
cross_c = xcorr(x, y);
covariance = cov(x, y);

subplot(2,1,1); 
stem(auto_c); 
title('Auto-correlation of x');

subplot(2,1,2); 
stem(cross_c); 
title('Cross-correlation of x and y');

disp('Covariance Matrix:'); 
disp(covariance);