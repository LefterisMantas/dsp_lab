clear;clc;close all
v = VideoReader('500fps.avi');
i = 0;
while hasFrame(v)
    i = i + 1;
    I = rgb2gray(im2double(readFrame(v))); %read gray
    x(i) = I(293,323);
end
y = x - mean(x);
%%
Y = abs(fftshift(fft(y,1024)));
F = linspace(-250,250,1024);
plot(F,Y)
%saveas(gca,'dft.png');

Y_notshifted =abs(fft(y,1024));
plot(Y_notshifted);

%%
vid = VideoReader('500fps_noisy.avi');
i = 0;
while hasFrame(vid)
    i = i + 1;
    I = rgb2gray(im2double(readFrame(vid))); %read gray
    x(i) = I(293,323);
end
y = x - mean(x);
%%
figure;
Y = abs(fftshift(fft(y,1024)));
F = linspace(-250,250,1024);
plot(F,Y)
%saveas(gca,'dft_noisy.png');

%filtering, removing the noise
y1 = medfilt1(y,11);
figure;
subplot(121);plot(y); title('with noise');
subplot(122);plot(y1); title('without noise');

figure;
Y1 = abs(fftshift(fft(y1,1024)));
F1 = linspace(-250,250,1024);
plot(F1,Y1);
%saveas(gca,'dft_not_noisy.png')