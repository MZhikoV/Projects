function [T_rec_end, T_rec, acc_cm] = time_series_function_01( flag_rec, file_path, fformat, accformat, input_dt )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%output variables
% T_rec_end         - end time of the record
% T_rec             - time intervals of the record
% acc_cm            - time series in correct dimensions
% 
% 
% 
% 
% 
% 
% 
% 
%input variables
% flag_rec          - 1-acceleration;   2-velocity; 3-displacement;
% file_path         - defines the file path
% fformat           - defines the file format 1- sigle acc per line, 2- time and acc per line and 3 - multiple acc per line
% accformat         - defines the acc input units 1- g, 2- cm/s^2 and 3 - mm/s^2
% 
% 
% 
% 
% 
% 
% 
% 
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%opening acceleration file

fid=fopen(file_path,'r');

if fformat==1
        A = fscanf(fid,'%f',[1 Inf]); %The content of the file is loaded into array A
        fclose(fid);
        B=A'; %reversing matrix
        acc_REC = B(:,1);               % acceleration from the record
%         input_dt;                     % time step of the record
        mat_el = numel(B);              %number of the matrix elements
        T_rec(1) =0;
        for mat_t_el=2:1:mat_el
        T_rec(mat_t_el) =T_rec(mat_t_el-1)+ input_dt ;   % time intervals of the record
        end
        T_rec_end=max(abs(T_rec(mat_t_el)));     % end time of the record
                
else if fformat==2
        A = fscanf(fid,'%f',[2 Inf]); %The content of the file is loaded into array A
        fclose(fid);
        B=A'; %reversing matrix

        T_rec = B(:,1) ;                % time intervals of the record
        T_rec_end=max(abs(B(:,1)));     % end time of the record
%         input_dt;                     % time step of the record
        acc_REC = B(:,2);               % acceleration from the record
    end
end

g=9.81; %ground acceleration const



%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

%determining the acceleration units
if flag_rec==1
    
if accformat==1
    acc_cm=acc_REC.*g*100; %acceleration in [cm/s^2] 
else if accformat==2
        acc_cm=acc_REC.*100; %acceleration in [cm/s^2]
    else if accformat==3
        acc_cm=acc_REC; %acceleration in [cm/s^2]
        else
        acc_cm=acc_REC./10; %acceleration in [cm/s^2]
        end
    end
end

    else if flag_rec==2
    %determining the velocity units

        if accformat==1||accformat==2
           acc_cm=acc_REC.*100; %acceleration in [cm/s]
            else if accformat==3
                acc_cm=acc_REC; %acceleration in [cm/s]
                else
                acc_cm=acc_REC./10; %acceleration in [cm/s]
                end
        end
        
        else if flag_rec==3
           %determining the displacement units     
             if accformat==1||accformat==2
               acc_cm=acc_REC.*100; %acceleration in [cm]
                else if accformat==3
                    acc_cm=acc_REC; %acceleration in [cm]
                    else
                    acc_cm=acc_REC./10; %acceleration in [cm]
                    end
             end
            end
        end
end

























end

