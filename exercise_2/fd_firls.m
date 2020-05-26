close all; clear; clc

h_lp=firls(30,[0 .2 .3 1],[1 1 0 0]);
h_hp=firls(30,[0 .2 .3 1],[0 0 1 1]);

NumFFT = 8192;
Freqs = linspace(-1,1,NumFFT);
MF_lp=20*log10(abs(fftshift(fft(h_lp,NumFFT))));
MF_hp=20*log10(abs(fftshift(fft(h_hp,NumFFT))));

figure;
plot(Freqs,MF_lp);
title('Filter Frequency Response (dB Scale) Low-Pass Filter')
grid on;
figure;
plot(Freqs,MF_hp);
title('Filter Frequency Response (dB Scale) High-Pass Filter')
grid on;

sound(MF_lp,4500);
sound(MF_hp,4500);
