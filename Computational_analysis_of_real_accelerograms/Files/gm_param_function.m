function [ pga,pgv, pgd,t_pga, t_pgv, t_pgd, ratio_pga_pgv, ratio_pgv_pga, ratio_pgd_pgv, Ia_int,Ia_tot, Ia_val,Ia,arms,vrms, drms, Ic,SED,CAV, ASI, VSI, IH] = gm_param_function( acc_cm, vel,disp, input_dt,T_rec_end ,dTn, SPA,SPV, SV, T_rec )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
% input_args
% 
% output_args
% 
%calculating the peak ground acceleration, peak ground velocity and peak ground displacement
[pga,indx_pga] = max(abs(acc_cm)); %peak ground acceleration with index [cm/s^2]
t_pga=T_rec(indx_pga);              %the time in which PGA is located [s]
[pgv,indx_pgv] = max(abs(vel));     %peak ground velocity with index [cm/s]
t_pgv=T_rec(indx_pgv);              %the time in which PGV is located [s]
[pgd,indx_pgd] = max(abs(disp));    %peak ground displacement with index [cm]
t_pgd=T_rec(indx_pgd);      

%calculating the max peak ground acceleration, ratios pga to pgv, pgv to pga and pgd to pgv
pga_g=max(abs(acc_cm));             %max peak ground acceleration  [cm/s^2]
ratio_pga_pgv=pga_g/pgv;            %pga to pgv ratio
ratio_pgv_pga=pgv/pga_g;            %pgv to pga ratio
ratio_pgd_pgv=pgd/pgv;              %pgd to pgv ratio

%Calculating the Arias intensity
g=9.81;
Ia_int = (pi/(2*g))*(cumsum(acc_cm.^2)*input_dt);   %Arias intensity
Ia_tot=Ia_int(end);                                 %Arias intensity at the end
Ia_val = Ia_tot(end);                               %Arias intensity value in m/s
Ia = (Ia_int/Ia_tot)*100;                           %Arias intensity in percent

%  Calculating Arms
arms_eq=sqrt((trapz(acc_cm.^2)*input_dt)/T_rec_end); %Calculating the Arms
arms=max(arms_eq); %Arms

%  Calculating Vrms
vrms_eq=sqrt((trapz(vel.^2)*input_dt)/T_rec_end); %Calculating the Vrms
vrms=max(vrms_eq); %Vrms

%  Calculating Drms
drms_eq=sqrt((trapz(disp.^2)*input_dt)/T_rec_end); %Calculating the Drms
drms=max(drms_eq); %Drms

%--------------------------------------------------------------------------
%  Calculating characteristic intensity Ic
Ic=sqrt(arms^3)*sqrt(T_rec_end);    %Characteristic intensity Ic

%--------------------------------------------------------------------------
%  Calculating the specific energy density SED
SED=max(cumtrapz(vel.^2)*input_dt); %SED 

%--------------------------------------------------------------------------
%  Calculating the Cumulative Absolute Velocity CAV
CAV=max(cumsum(abs(acc_cm))*input_dt);    %Calculating the Cumulative Absolute Velocity CAV Reed 1990

%--------------------------------------------------------------------------
%  Calculating the Acceleration Spectrum Intensity ASI
asi_index_start=0.1/dTn;        %Starting index of the SPA array for period time 0.1
asi_index_end=0.5/dTn;          %Ending index of the SPA array for period time 0.5

br_asi_beg=1;                   %Counter for indexing the elements of need from SPA

ASI_elements=zeros;

for br_asi=asi_index_start:1:asi_index_end
    ASI_elements(br_asi_beg)=SPA(br_asi);
    br_asi_beg=br_asi_beg+1;
end

ASI=max(cumsum(ASI_elements)*input_dt);             % bradley2010.pdf

%--------------------------------------------------------------------------
%  Calculating the Velocity Spectrum Intensity VSI
vsi_index_start=0.1/dTn;        %Starting index of the SPA array for period time 0.1
vsi_index_end=2.5/dTn;          %Ending index of the SPA array for period time 0.5

br_vsi_beg=1;                   %Counter for indexing the elements of need from SPA

VSI_elements=zeros;

for br_vsi=vsi_index_start:1:vsi_index_end
    VSI_elements(br_vsi_beg)=SV(br_vsi);
    br_vsi_beg=br_vsi_beg+1;
end

VSI=max(cumsum(VSI_elements)*input_dt);             % seismosignal help

%--------------------------------------------------------------------------
%Calculating Housner intensity IH 

% IH=cumtrapz(SPV);
ih_index_start=0.1/dTn;        %Starting index of the SPA array for period time 0.1
ih_index_end=2.5/dTn;          %Ending index of the SPA array for period time 0.5

br_ih_beg=1;                   %Counter for indexing the elements of need from SPA

ih_elements=zeros;

for br_ih=ih_index_start:1:ih_index_end
    ih_elements(br_ih_beg)=SPV(br_ih);
    br_ih_beg=br_ih_beg+1;
end

IH=max(cumsum(ih_elements)*dTn);             % bradley2010.pdf








end

