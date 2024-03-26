function [ FAS_fft, FAS_freq, FAS_fft1, FAS_freq1, PSD2, PSD1 ] = FFT_function( acc_cm, T_rec_end, input_dt )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% input_args
% acc_cm        - acceleration in cm
% T_rec_end     - end time of the record
% input_dt      - record interval
% 
%  output_args
% FAS_fft       - Fourier amplitudes double sided
% FAS_freq      - Double sided frequencies
% FAS_fft1      - Single sided FAS
% FAS_freq1     - Single sided frequencies
% PSD2          - Double sided power spectrum density
% PSD1          - Single sided power spectrum density



acc =acc_cm/100;


Ny = (1/input_dt)/2;                %Nyquist frequency (highest frequency)
accft=acc;                          %Returning values in m/sec^2 for acceleration
L_fft  = length(acc);               %Number of points in acceleration vector
NFFT = 2^nextpow2(L_fft);           %Next power of 2 from length of acc
df = 1./(NFFT*input_dt);            %Frequency spacing
Amp_fft = fft(accft,NFFT);          %Fourier series 

FAS_fft=abs(Amp_fft)*input_dt;      %Fourier amplitudes double sided
FAS_freq=(0:df:(1/input_dt)-df);    %Double sided frequencies
FAS_fft1 = FAS_fft(1:Ny/df+1);      %Single sided FAS
% FAS_fft1(2:end-1)=2*FAS_fft1(2:end-1);
FAS_freq1 = FAS_freq(1:Ny/df+1)';           %Single sided frequencies

arms_eq=sqrt((trapz(accft.^2)*input_dt)/T_rec_end); %Calculating the Arms
arms=max(arms_eq);

PSD2=(((abs(Amp_fft)).^2)/(pi*L_fft*((arms)^2)))*input_dt;  %Double sided power spectrum density
PSD1=PSD2(1:Ny/df+1);                                       %Single sided power spectrum density
% PSD1(2:end-1)=2*PSD1(2:end-1);      



end

