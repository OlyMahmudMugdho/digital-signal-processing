fs = 1000;
A = 1;
t = 0:1/fs:1;
f = 10;

n_bits = 8;
quantization_level = 2^n_bits;

analog_signal = A*sin(2*pi*f*t);

quantized_signal = round(analog_signal * (n_bits-1) / max(analog_signal));
digital_signal = quantized_signal;

disp(digital_signal);
plot(digital_signal);

reconstructed_signal = digital_signal/(n_bits-1)*max(analog_signal);


subplot(3,1,1);
plot(t,analog_signal);
title("Analog Signal");


subplot(3,1,2);
stem(t,analog_signal);
title("Digital Signal");

subplot(3,1,3);
stem(t,reconstructed_signal);
title("Reconstructed Signal");