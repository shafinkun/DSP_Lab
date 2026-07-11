% Generate 50 sine waves and 50 noise signals
features = zeros(100, 2);
labels = zeros(100, 1);

for i = 1:50
    sig = rand*sin(2*pi*(1:100)/10);
    features(i, 1) = var(sig);
    features(i, 2) = max(abs(sig));
    labels(i) = 1; % Sine class

    noise = randn(1, 100);
    features(i+50, 1) = var(noise);
    features(i+50, 2) = max(abs(noise));
    labels(i+50) = 2; % Noise class
end

gscatter(features(:,1), features(:,2), labels, 'rb', 'xo');
title('Feature Extraction: Sine (1) vs Noise (2)');
xlabel('Variance'); ylabel('Max Amplitude');