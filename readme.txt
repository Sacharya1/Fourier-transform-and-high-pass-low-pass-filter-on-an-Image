*** INSTALATION ***

Sampad Acharya

On Matlab

Open Matlab and run the script main.m

For drawing histogram there is a separate file name Draw_Hist.m. This file should be run separately to obtain Histograms and values of ROI must be declared inside the function. 


*** FUNCTIONS ***


HW4:

1.Low pass filter: LPF.
2.High pass filter: HPF.
3.Band stop filter: BSF


For Fourier domain image after and before filtering please check images that is shown directly by the Matlab. As I have used 3 ROI in the place of 2 ROI,it would be a lots of images to save.


The functions directly can be called using one main file. If one wishes to read all the parameters values from a file here is the Parameter file.
*** PARAMETERS FILE ***

There are for parameters:





1. the input file name;
2. the output file name;
3. the name of the filter. Use (LPF,LPF1,LPF2)for Low Pass Filter and LPF2 gives you the final output; (HPF,HPF1,HPF2) for High Pass Filter and HPF2 gives you the output;(BSF,BSF1,BSF2) for Band Stop Filter and BSF2 gives you final output; 

4.Threshold Value for operations.
5.Threshold Value for BSF.