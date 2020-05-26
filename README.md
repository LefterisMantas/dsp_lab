# dsp_lab

These 4 exercises were done for the digital signal processing (DSP) subject.

The first [/exercise_1](/exercise_1) is about sampling and reconstructing signals with [/exercise_1/sampling_reconstruction.m](/exercise_1/sampling_reconstruction.m) file. 
All observations done about:
1) The errors depending on the sampling frequency
2) The differencies between conv() and filter() Matlab built-in functions
3) The remaining frequencies after reconstruction
4) The plots

can be found in the  [/exercise_1/Report.pdf](/exercise_1/Report.pdf)

The second [/exercise_1](/exercise_2) is about creating FIR filters with 3 techniques:
- Fourier Series
- Don't Care
- Min-Max

We remove the noise of the signal with all of these techniques and afterwards we listen the signal with MATLAB's sound() method.
We also count MSE error to infer the best technique.

Lastly, we create an FIR Least-Squared Bandstop filter with filterDesginer of MATLAB to remove the noise from [/exercise_2/Noisy.mat](/exercise_2/Noisy.mat) and listen the original sound of the signal. 

Specific results can be found in [/exercise_2/Report.pdf](/exercise_2/Report.pdf)
