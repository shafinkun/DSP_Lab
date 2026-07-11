b_fir = fir1(20, 0.3); 
a_fir = 1;
[b_iir, a_iir] = butter(4, 0.3);


subplot(2,1,1); [h, w] = freqz(b_fir, a_fir); 
plot(w/pi, unwrap(angle(h))); title('FIR Phase (Linear)');
subplot(2,1,2); [h, w] = freqz(b_iir, a_iir);
plot(w/pi, unwrap(angle(h))); title('IIR Phase (Non-linear)');