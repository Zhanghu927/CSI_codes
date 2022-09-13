# CSI_codes
Code for figures and data in the manuscript 'A novel red-edge spectral index for retrieving the leaf chlorophyll content'

'Ref_ALL(Swir).mat' is the .mat file storing the PROSAIL simulated reflectance . It is a 3d matrix (x*y*z: 81*10*100). 
X: Chl from 0 to 80, 
Y: band for Sentinel-2, 2-8 represent the blue to NIR band
Z: LAI (1:0.1:10)

'sensitivity_Cab' and 'sensitivity_LAI' are the Matlab codes showing the PROSAIL-simulated reflectance for different bands with increasing Chlleaf and LAI and the variations in the derivative of the normalized reflectance. 

'validation data.xlsx' includes all the valiadation data, but the latitude and longtitude are hidden. Anyone who want to use the data for their research, please connect with Dr. Li via lijing200531@aircas.ac.cn.

'validation_figures.m' is the Matlab codes for the validation results.
