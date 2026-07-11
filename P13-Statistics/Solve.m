x = randn(1, 1000); % Gaussian noise

m = mean(x);
v = var(x);
s = std(x);
sk = skewness(x);
k = kurtosis(x);

fprintf('Mean: %.4f\nVar: %.4f\nStd: %.4f\nSkew: %.4f\nKurt: %.4f\n', m, v, s, sk, k);