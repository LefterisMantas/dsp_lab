clear;clc;close all
load('Noisy-expo.mat')

for M = [100,500,1000,10000]
plot(abs(fftshift(fft(y(1:M),2^17)/M)));hold on
end

%M=100
plot(abs(fftshift(fft(y(1:100),2^17)/100)));hold on
plot(angle(fftshift(fft(y(1:100),2^17)/100)));hold on
%M=500
plot(abs(fftshift(fft(y(1:500),2^17)/500)));hold on
%M=1000
plot(abs(fftshift(fft(y(1:1000),2^17)/1000)));hold on
%M=10000
plot(abs(fftshift(fft(y(1:10000),2^17)/10000)));hold on

