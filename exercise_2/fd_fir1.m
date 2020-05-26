close all; clear; clc

N = 31;
fc = 0.48;

hc_low = fir1(N - 1, fc,'low');
hc_high = fir1(N - 1, fc,'high');

NumFFT = 4096;
Freqs = linspace(-1,1,NumFFT);
MF_lp=20*log10(abs(fftshift(fft(hc_low,NumFFT))));
MF_hp=20*log10(abs(fftshift(fft(hc_high,NumFFT))));
figure;
plot(Freqs,MF_lp)
title('Filter Frequency Response (dB Scale) Low-Pass Filter')
figure
plot(Freqs,MF_hp)
title('Filter Frequency Response (db Scale High-Pass Filter)')
grid on;

sound(MF_hp,4500);
sound(MF_hp,16000);