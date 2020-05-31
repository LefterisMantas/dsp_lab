# dsp_lab

These 4 exercises were done for the digital signal processing (DSP) subject.
## Exercise 1
The first [/exercise_1](/exercise_1) is about sampling and reconstructing signals with [/exercise_1/sampling_reconstruction.m](/exercise_1/sampling_reconstruction.m) file. 
All observations done about:
- The errors depending on the sampling frequency
- The differencies between conv() and filter() Matlab built-in functions
- The remaining frequencies after reconstruction
- The plots

can be found in the  [/exercise_1/Report.pdf](/exercise_1/Report.pdf)

## Exercise 2
The second [/exercise_2](/exercise_2) is about creating FIR filters with 3 techniques:
- Fourier Series
- Don't Care
- Min-Max

We remove the noise of the signal with all of these techniques and afterwards we listen the signal with MATLAB's sound() method.
We also count MSE error to infer the best technique.

Lastly, we create an FIR Least-Squared Bandstop filter with filterDesginer of MATLAB to remove the noise from [/exercise_2/Noisy.mat](/exercise_2/Noisy.mat) and listen the original sound of the signal. 

Specific results can be found in [/exercise_2/Report.pdf](/exercise_2/Report.pdf)

## Exercise 3
The third [/exercise_3](/exercise_3) is about removing the noise out of photograph using linear and non-linear filters.
In the [/exercise_3/Report.pdf](/exercise_3/Report.pdf) we :
- Count the second derivatives of the image [/exercise_3/photo.jpg](/exercise_3/photo.jpg)
- Remove the noise of [/exercise_3/photo.jpg](/exercise_3/photo.jpg) and [/exercise_3/photo-deg.jpg](/exercise_3/photo-deg.jpg)
- Analyse the video [/exercise_3/500fps.avi](/exercise_3/500fps.avi) and [/exercise_3/500fps_noisy.avi](/exercise_3/500fps_noisy.avi) and find the harmonic frequency.
