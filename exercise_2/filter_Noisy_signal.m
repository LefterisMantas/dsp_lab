load Noisy
FS=44100;
f = filtfilt(Num,1,yw);% Zero-phase digital filtering
figure;
plot(yw);hold on;
plot(f,'r');hold on;

NumFFT = 8192;
F = linspace(-FS/2,FS/2,NumFFT);
figure;
plot(F, 20*log10(abs(fftshift(fft(yw,NumFFT)))),'b'); hold on
plot(F, 20*log10(abs(fftshift(fft(f,NumFFT)))),'g');
figure;
plot(F,20*log10(Num));

%sound(f,FS)
figure;
plot(abs(fft(yw,NumFFT)),'b'); hold on
plot(abs(fft(f,NumFFT)),'g');
saveas(gcf,'mypicture.png')

%erwthma 4
noise =yw-f; %noise signal
figure;
plot(noise(1:250));
saveas(gcf,'noise.png')
%erwthma 5
figure;
plot(f(989607:989857));
saveas(gcf,'f.png')