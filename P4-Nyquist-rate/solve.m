% Experiment 4: Sampling
clc; clear; close all;
f = 10; t = 0:0.001:0.2; 
x_c = sin(2*pi*f*t); % "Continuous" signal

fs_nyq = 20; n_nyq = 0:1/fs_nyq:0.2; x_nyq = sin(2*pi*f*n_nyq);
fs_over = 50; n_over = 0:1/fs_over:0.2; x_over = sin(2*pi*f*n_over);
fs_under = 12; n_under = 0:1/fs_under:0.2; x_under = sin(2*pi*f*n_under);

subplot(3,1,1); plot(t, x_c, 'k'); hold on; stem(n_nyq, x_nyq, 'r'); title('Nyquist Rate (20 Hz)');
subplot(3,1,2); plot(t, x_c, 'k'); hold on; stem(n_over, x_over, 'b'); title('Over-sampled (50 Hz)');
subplot(3,1,3); plot(t, x_c, 'k'); hold on; stem(n_under, x_under, 'g'); title('Under-sampled (12 Hz)');