clear;clc;close all
K = 50;
n = [-2000:4000]'; %number of instances
A = rand(1,K) - 1/2; %random amplitude (-1/2,1/2)
x = A .* ((n > 0) - (n - 1999 > 0)); %square stochastic pulse 
Acor = x*x'/K; 
Sd = 20*log10(fftshift(abs(fft2(Acor))));
%%
plot(n,x)
figure; imagesc(n,n,Acor)
figure; imagesc(Sd)

%%
stohastic_mean = mean(x,2);
plot(n,stohastic_mean);