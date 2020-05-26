 load chirp;% Load data (y and Fs) into workspace
 y0=y;
 noise=0.5*randn(size(y));
 y = y0 + noise;% Adding noise

 b = fir1(34,0.48,'high',chebwin(35,30)); %Fourier Series % FIR filter design
 b_dont_care=firls(34,[0 0.45 0.5 1],[0 0 1 1]); %_dont_care
 b_min_max=firpm(34,[0 0.45 0.5 1],[0 0 1 1]); %_min_max
 
 freqz(b,1,512);% Frequency response of filter
 freqz(b_dont_care,1,512);% Frequency response of filter
 freqz(b_min_max,1,512);% Frequency response of filter

 f_output = filtfilt(b,1,y);% Zero-phase digital filtering
 f_output_dont_care = filtfilt(b_dont_care,1,y);
 f_output_min_max = filtfilt(b_min_max,1,y);
 
 %plot the first 100 of each signal
 figure;
 subplot(311); plot(y0(1:100),'b'); title('Original Signal')
 subplot(312); plot(y(1:100),'r'); title('Noisy Signal')
 subplot(313); plot(f_output(1:100),'g'); title('Filtered Signal')
 
 plot(y0(1:100));
 figure;
 plot(f_output(1:100),'g');
 figure;
 plot(f_output_dont_care(1:100),'g');
 figure;
 plot(f_output_min_max(1:100),'g');
 
 %counting mse errors for all techniques
 err = immse(y0,f_output);
 err_dont_care = immse(y0,f_output_dont_care);
 err_min_max = immse(y0,f_output_min_max);
 
 NumFFT = 1024;
 F = linspace(-Fs/2,Fs/2,NumFFT);
 
 
 %plot the frequency content
 figure;
 subplot(311); plot(F, abs(fftshift(fft(y0,NumFFT))),'b'); title('Original Signal DFT')
 subplot(312); plot(F, abs(fftshift(fft(y,NumFFT))),'r'); title('Noisy Signal DFT')
 subplot(313); plot(F, abs(fftshift(fft(f_output,NumFFT))),'g'); title('Filtered Signal DFT')
 
 %{
 figure;
 plot(F, abs(fftshift(fft(f_output(1:100),NumFFT))),'g'); title('Filtered Signal DFT')
 figure;
 plot(F, abs(fftshift(fft(f_output_dont_care(1:100),NumFFT))),'g'); title('Filtered Signal DFT DONT CARE')
 figure;
 plot(F, abs(fftshift(fft(f_output_min_max(1:100),NumFFT))),'g'); title('Filtered Signal DFT MIN-MAX')
%}
  
sound(y0,Fs);%sound of real signal 
sound(f_output,Fs);%sound after removing sound
sound(f_output_dont_care,Fs);%sound after removing sound
sound(f_output_min_max,Fs);%sound after removing sound
