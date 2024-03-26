function [ SPV, SPA ] = PSV_PSA( Tn,dTn, Tn_max, SD  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
% 
% input_args
% Tn            - setting the period interval and step
% dTn           - ime interval [s]
% Tn_max        - Maximum period time [s]
% SD            - Spectral displacement
% 
% 
% 
% 
% output_args
% SPV
% 
% 
% 
% 
% 
% 
% 
% 
% 


%--------------------------------------------------------------------------
%Velocity pseudo-spectrum
br_spv=1;
br_len=length(Tn);
SPV=zeros(1,br_len);    %Initial conditions

for Tn1=0:dTn:Tn_max
    SPV(br_spv)=(2*pi/Tn1)*SD(br_spv);  %Calculating pseudo-velocity spectra
    br_spv=br_spv+1;
end
SPV(1,1)=0;

%--------------------------------------------------------------------------
%Acceleration pseudo-spectrum
br_spa=1;
br_len=length(Tn);
SPA=zeros(1,br_len);        %Initial conditions
for Tn1=0:dTn:Tn_max
    SPA(br_spa)=(2*pi/Tn1)*(2*pi/Tn1)*SD(br_spa);   %Calculating pseudo-acceleration spectra
    br_spa=br_spa+1;
end







end

