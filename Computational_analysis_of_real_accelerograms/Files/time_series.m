function varargout = time_series(varargin)
% TIME_SERIES MATLAB code for time_series.fig
%      TIME_SERIES, by itself, creates a new TIME_SERIES or raises the existing
%      singleton*.
%
%      H = TIME_SERIES returns the handle to a new TIME_SERIES or the handle to
%      the existing singleton*.
%
%      TIME_SERIES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TIME_SERIES.M with the given input arguments.
%
%      TIME_SERIES('Property','Value',...) creates a new TIME_SERIES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before time_series_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to time_series_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help time_series

% Last Modified by GUIDE v2.5 28-Apr-2017 15:32:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @time_series_OpeningFcn, ...
                   'gui_OutputFcn',  @time_series_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before time_series is made visible.
function time_series_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to time_series (see VARARGIN)

% Choose default command line output for time_series
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes time_series wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = time_series_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%global variables
global   input_dt fformat accformat acc_out vel_out disp_out T_rec acc_cm vel disp 
global unit_coeff_acc unit_label_acc unit_coeff_vel unit_label_vel unit_coeff_disp unit_label_disp 

global file_path_disp_0 
global file_path_disp_1 
global file_path_disp_2 
global file_path_disp_3 
global file_path_disp_4 
global file_path_disp_5 
global file_path_disp_6 
global file_path_disp_7 

global file_path_vel_0 
global file_path_vel_1 
global file_path_vel_2 
global file_path_vel_3 
global file_path_vel_4 
global file_path_vel_5 
global file_path_vel_6 
global file_path_vel_7 

global file_path_acc_0  file_name_acc_0  
global file_path_acc_1  file_name_acc_1  
global file_path_acc_2  file_name_acc_2  
global file_path_acc_3  file_name_acc_3  
global file_path_acc_4  file_name_acc_4  
global file_path_acc_5  file_name_acc_5  
global file_path_acc_6  file_name_acc_6 
global file_path_acc_7  file_name_acc_7  
global set_content 

global acc_cm_0 vel_cm_0 disp_cm_0 T_rec_0 T_rec_end_0
global acc_cm_1 vel_cm_1 disp_cm_1 T_rec_1 T_rec_end_1
global acc_cm_2 vel_cm_2 disp_cm_2 T_rec_2 T_rec_end_2
global acc_cm_3 vel_cm_3 disp_cm_3 T_rec_3 T_rec_end_3
global acc_cm_4 vel_cm_4 disp_cm_4 T_rec_4 T_rec_end_4
global acc_cm_5 vel_cm_5 disp_cm_5 T_rec_5 T_rec_end_5
global acc_cm_6 vel_cm_6 disp_cm_6 T_rec_6 T_rec_end_6
global acc_cm_7 vel_cm_7 disp_cm_7 T_rec_7 T_rec_end_7

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% defining visibility of the radio buttons and record names
if set_content==1
butt_group_4 = get(handles.uipanel4,'Children');
set(butt_group_4,'Enable','off');
set(handles.rb_rec_0,'String',file_name_acc_0(1:end-8));
else if set_content==7
    butt_group_3 = get(handles.uipanel3,'Children');
    set(butt_group_3,'Enable','off');
    set(handles.rb_rec_1,'String',file_name_acc_1(1:end-8))
    set(handles.rb_rec_2,'String',file_name_acc_2(1:end-8))
    set(handles.rb_rec_3,'String',file_name_acc_3(1:end-8))
    set(handles.rb_rec_4,'String',file_name_acc_4(1:end-8))
    set(handles.rb_rec_5,'String',file_name_acc_5(1:end-8))
    set(handles.rb_rec_6,'String',file_name_acc_6(1:end-8))
    set(handles.rb_rec_7,'String',file_name_acc_7(1:end-8))
    end
     
end

%--------------------------------------------------------------------------
g=9.81; %ground acceleration const

%--------------------------------------------------------------------------
%defining output units for acceleration

if acc_out==1
    unit_coeff_acc=1/(g*100);
    unit_label_acc='g';
else if acc_out==2
        unit_coeff_acc=1/(100);
        unit_label_acc='m/s^2';
    else if acc_out==3
            unit_coeff_acc=1;
            unit_label_acc='cm/s^2';
        else if acc_out==4
                unit_coeff_acc=1*10;
                unit_label_acc='mm/s^2';
            end
        end
    end
end

%--------------------------------------------------------------------------
%defining output units for velocity

if vel_out==1
    unit_coeff_vel=1/(100);
    unit_label_vel='m/s';
else if vel_out==2
        unit_coeff_vel=1;
        unit_label_vel='cm/s';
    else if vel_out==3
            unit_coeff_vel=1*10;
            unit_label_vel='mm/s';
        end
    end
end

%--------------------------------------------------------------------------
%defining output units for displacement

if disp_out==1
    unit_coeff_disp=1/(100);
    unit_label_disp='m';
else if disp_out==2
        unit_coeff_disp=1;
        unit_label_disp='cm';
    else if disp_out==3
            unit_coeff_disp=1*10;
            unit_label_disp='mm';
        end
    end
end


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record

if set_content==1


[ T_rec_end_0, T_rec_0, acc_cm_0] = time_series_function_01( 1, file_path_acc_0 ,fformat, accformat,input_dt );
[ T_rec_end_0, T_rec_0, vel_cm_0] = time_series_function_01( 2, file_path_vel_0 ,fformat, accformat,input_dt );
[ T_rec_end_0, T_rec_0, disp_cm_0] = time_series_function_01( 3, file_path_disp_0 ,fformat, accformat ,input_dt);

acc_cm=acc_cm_0;
vel=vel_cm_0;
disp=disp_cm_0;
T_rec=T_rec_0;



% Get default command line output from handles structure
varargout{1} = handles.output;

% uitable1
column2acc=strjoin({'Acceleration','(',unit_label_acc, ')'});
set(handles.uitable1, 'ColumnName', {'Time (s)' column2acc });

acc_tt(:,1)=T_rec;  %copy data to a matrix, prepared for data input in table
acc_tt(:,2)=acc_cm.*unit_coeff_acc;
set(handles.uitable1, 'data', acc_tt);

% uitable2
column2vel=strjoin({'Velocity','(',unit_label_vel, ')'});
set(handles.uitable2, 'ColumnName', {'Time (s)' column2vel });

vel_tt(:,1)=T_rec;  %copy data to a matrix, prepared for data input in table
vel_tt(:,2)=vel.*unit_coeff_vel;
set(handles.uitable2, 'data', vel_tt);

% uitable3
column2disp=strjoin({'Displacement','(',unit_label_disp, ')'});
set(handles.uitable3, 'ColumnName', {'Time (s)' column2disp });

disp_tt(:,1)=T_rec;  %copy data to a matrix, prepared for data input in table
disp_tt(:,2)=disp.*unit_coeff_disp;
set(handles.uitable3, 'data', disp_tt);


%calculating the peak ground acceleration, peak ground velocity and peak ground displacement
[pga,indx_pga] = max(abs(acc_tt(:,2))); %peak ground acceleration with index [cm/sec^2]
t_pga=T_rec(indx_pga);              %the time in which PGA is located [sec]
[pgv,indx_pgv] = max(abs(vel_tt(:,2)));     %peak ground velocity with index [cm/sec]
t_pgv=T_rec(indx_pgv);              %the time in which PGV is located [sec]
[pgd,indx_pgd] = max(abs(disp_tt(:,2)));    %peak ground displacement with index [cm]
t_pgd=T_rec(indx_pgd);              %the time in which PGD is located [sec]



% plot graphs
axes(handles.axes1);
plot(T_rec, acc_tt(:,2), T_rec(indx_pga),acc_tt(indx_pga,2),'r*');
grid ;
xlabel('Time (s)');
ylabel(column2acc) ;
strng = num2str(pga);
strng1={' ','\leftarrow','PGA=', strng,unit_label_acc};
strng2=strjoin(strng1);
text(T_rec(indx_pga),acc_tt(indx_pga,2),  strng2,...
    'HorizontalAlignment','left');

axes(handles.axes2);
plot(T_rec,vel_tt(:,2), T_rec(indx_pgv),vel_tt(indx_pgv,2),'r*');
grid ;
xlabel('Time (s)') ;
ylabel(column2vel) ;
strng = num2str(pgv);
strng1={' ','\leftarrow','PGV=', strng,unit_label_vel};
strng2=strjoin(strng1);
text(T_rec(indx_pgv),vel_tt(indx_pgv,2),  strng2,...
    'HorizontalAlignment','left');

axes(handles.axes3);
axis square
plot(T_rec,disp_tt(:,2), T_rec(indx_pgd),disp_tt(indx_pgd,2),'r*');
grid ;
xlabel('Time (s)') ;
ylabel(column2disp) ;
strng = num2str(pgd);
strng1={' ','\leftarrow','PGD=', strng,unit_label_disp};
strng2=strjoin(strng1);
text(T_rec(indx_pgd),disp_tt(indx_pgd,2),  strng2,...
    'HorizontalAlignment','left');
end;

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set

if set_content==7

%first record
[ T_rec_end_1, T_rec_1, acc_cm_1] = time_series_function_01( 1, file_path_acc_1 ,fformat, accformat,input_dt );
[ T_rec_end_1, T_rec_1, vel_cm_1] = time_series_function_01( 2, file_path_vel_1 ,fformat, accformat,input_dt );
[ T_rec_end_1, T_rec_1, disp_cm_1] = time_series_function_01( 3, file_path_disp_1 ,fformat, accformat ,input_dt);

%second record
[ T_rec_end_2, T_rec_2, acc_cm_2] = time_series_function_01( 1, file_path_acc_2 ,fformat, accformat,input_dt );
[ T_rec_end_2, T_rec_2, vel_cm_2] = time_series_function_01( 2, file_path_vel_2 ,fformat, accformat,input_dt );
[ T_rec_end_2, T_rec_2, disp_cm_2] = time_series_function_01( 3, file_path_disp_2 ,fformat, accformat ,input_dt);

%third record
[ T_rec_end_3, T_rec_3, acc_cm_3] = time_series_function_01( 1, file_path_acc_3 ,fformat, accformat,input_dt );
[ T_rec_end_3, T_rec_3, vel_cm_3] = time_series_function_01( 2, file_path_vel_3 ,fformat, accformat,input_dt );
[ T_rec_end_3, T_rec_3, disp_cm_3] = time_series_function_01( 3, file_path_disp_3 ,fformat, accformat ,input_dt);

%fourth record
[ T_rec_end_4, T_rec_4, acc_cm_4] = time_series_function_01( 1, file_path_acc_4 ,fformat, accformat,input_dt );
[ T_rec_end_4, T_rec_4, vel_cm_4] = time_series_function_01( 2, file_path_vel_4 ,fformat, accformat,input_dt );
[ T_rec_end_4, T_rec_4, disp_cm_4] = time_series_function_01( 3, file_path_disp_4 ,fformat, accformat ,input_dt);

%fifth record
[ T_rec_end_5, T_rec_5, acc_cm_5] = time_series_function_01( 1, file_path_acc_5 ,fformat, accformat,input_dt );
[ T_rec_end_5, T_rec_5, vel_cm_5] = time_series_function_01( 2, file_path_vel_5 ,fformat, accformat,input_dt );
[ T_rec_end_5, T_rec_5, disp_cm_5] = time_series_function_01( 3, file_path_disp_5 ,fformat, accformat ,input_dt);

%sixth record
[ T_rec_end_6, T_rec_6, acc_cm_6] = time_series_function_01( 1, file_path_acc_6 ,fformat, accformat,input_dt );
[ T_rec_end_6, T_rec_6, vel_cm_6] = time_series_function_01( 2, file_path_vel_6 ,fformat, accformat,input_dt );
[ T_rec_end_6, T_rec_6, disp_cm_6] = time_series_function_01( 3, file_path_disp_6 ,fformat, accformat ,input_dt);

%seventh record
[ T_rec_end_7, T_rec_7, acc_cm_7] = time_series_function_01( 1, file_path_acc_7 ,fformat, accformat,input_dt );
[ T_rec_end_7, T_rec_7, vel_cm_7] = time_series_function_01( 2, file_path_vel_7 ,fformat, accformat,input_dt );
[ T_rec_end_7, T_rec_7, disp_cm_7] = time_series_function_01( 3, file_path_disp_7 ,fformat, accformat ,input_dt);






end


% --- Executes on button press in pb_plot.
function pb_plot_Callback(hObject, eventdata, handles)
% hObject    handle to pb_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get default command line output from handles structure
varargout{1} = handles.output;
global T_rec acc_cm vel disp 
global unit_coeff_acc unit_label_acc unit_coeff_vel unit_label_vel unit_coeff_disp unit_label_disp 
global acc_cm_0 vel_cm_0 disp_cm_0 T_rec_0
global acc_cm_1 vel_cm_1 disp_cm_1 T_rec_1
global acc_cm_2 vel_cm_2 disp_cm_2 T_rec_2
global acc_cm_3 vel_cm_3 disp_cm_3 T_rec_3
global acc_cm_4 vel_cm_4 disp_cm_4 T_rec_4
global acc_cm_5 vel_cm_5 disp_cm_5 T_rec_5
global acc_cm_6 vel_cm_6 disp_cm_6 T_rec_6
global acc_cm_7 vel_cm_7 disp_cm_7 T_rec_7



global select_rec; %selected record
switch get(get(handles.uipanel4,'SelectedObject'),'Tag')
      case 'rb_rec_1',  select_rec=1;
      case 'rb_rec_2',  select_rec=2;
      case 'rb_rec_3',  select_rec=3;    
      case 'rb_rec_4',  select_rec=4;    
      case 'rb_rec_5',  select_rec=5;    
      case 'rb_rec_6',  select_rec=6;    
      case 'rb_rec_7',  select_rec=7;    
end

if select_rec==1
    acc_cm=acc_cm_1;
    vel=vel_cm_1;
    disp=disp_cm_1;
    T_rec=T_rec_1;
    
else if select_rec==2
        acc_cm=acc_cm_2;
        vel=vel_cm_2;
        disp=disp_cm_2;
        T_rec=T_rec_2;
        
    else if select_rec==3
        acc_cm=acc_cm_3;
        vel=vel_cm_3;
        disp=disp_cm_3;
        T_rec=T_rec_3;
        
         else if select_rec==4
            acc_cm=acc_cm_4;
            vel=vel_cm_4;
            disp=disp_cm_4;
            T_rec=T_rec_4;
            
                else if select_rec==5
                    acc_cm=acc_cm_5;
                    vel=vel_cm_5;
                    disp=disp_cm_5;
                    T_rec=T_rec_5;
                    
                        else if select_rec==6
                            acc_cm=acc_cm_6;
                            vel=vel_cm_6;
                            disp=disp_cm_6;
                            T_rec=T_rec_6;
                            
                                else if select_rec==7
                                    acc_cm=acc_cm_7;
                                    vel=vel_cm_7;
                                    disp=disp_cm_7;
                                    T_rec=T_rec_7;
                                    end
                            end
                    end
             end
        end
    end
end


% uitable1
column2acc=strjoin({'Acceleration','(',unit_label_acc, ')'});
set(handles.uitable1, 'ColumnName', {'Time (s)' column2acc });

acc_tt(:,1)=T_rec;  %copy data to a matrix, prepared for data input in table
acc_tt(:,2)=acc_cm.*unit_coeff_acc;
set(handles.uitable1, 'data', acc_tt);

% uitable2
column2vel=strjoin({'Velocity','(',unit_label_vel, ')'});
set(handles.uitable2, 'ColumnName', {'Time (s)' column2vel });

vel_tt(:,1)=T_rec;  %copy data to a matrix, prepared for data input in table
vel_tt(:,2)=vel.*unit_coeff_vel;
set(handles.uitable2, 'data', vel_tt);

% uitable3
column2disp=strjoin({'Displacement','(',unit_label_disp, ')'});
set(handles.uitable3, 'ColumnName', {'Time (s)' column2disp });

disp_tt(:,1)=T_rec;  %copy data to a matrix, prepared for data input in table
disp_tt(:,2)=disp.*unit_coeff_disp;
set(handles.uitable3, 'data', disp_tt);

%calculating the peak ground acceleration, peak ground velocity and peak ground displacement
[pga,indx_pga] = max(abs(acc_tt(:,2))); %peak ground acceleration with index [cm/sec^2]
t_pga=T_rec(indx_pga);              %the time in which PGA is located [sec]
[pgv,indx_pgv] = max(abs(vel_tt(:,2)));     %peak ground velocity with index [cm/sec]
t_pgv=T_rec(indx_pgv);              %the time in which PGV is located [sec]
[pgd,indx_pgd] = max(abs(disp_tt(:,2)));    %peak ground displacement with index [cm]
t_pgd=T_rec(indx_pgd);              %the time in which PGD is located [sec]



% plot graphs
axes(handles.axes1);
plot(T_rec, acc_tt(:,2), T_rec(indx_pga),acc_tt(indx_pga,2),'r*');
grid ;
xlabel('Time (s)');
ylabel(column2acc) ;
strng = num2str(pga);
strng1={' ','\leftarrow','PGA=', strng,unit_label_acc};
strng2=strjoin(strng1);
text(T_rec(indx_pga),acc_tt(indx_pga,2),  strng2,...
    'HorizontalAlignment','left');

axes(handles.axes2);
plot(T_rec,vel_tt(:,2), T_rec(indx_pgv),vel_tt(indx_pgv,2),'r*');
grid ;
xlabel('Time (s)') ;
ylabel(column2vel) ;
strng = num2str(pgv);
strng1={' ','\leftarrow','PGV=', strng,unit_label_vel};
strng2=strjoin(strng1);
text(T_rec(indx_pgv),vel_tt(indx_pgv,2),  strng2,...
    'HorizontalAlignment','left');

axes(handles.axes3);
axis square
plot(T_rec,disp_tt(:,2), T_rec(indx_pgd),disp_tt(indx_pgd,2),'r*');
grid ;
xlabel('Time (s)') ;
ylabel(column2disp) ;
strng = num2str(pgd);
strng1={' ','\leftarrow','PGD=', strng,unit_label_disp};
strng2=strjoin(strng1);
text(T_rec(indx_pgd),disp_tt(indx_pgd,2),  strng2,...
    'HorizontalAlignment','left');




% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
acc_load_02;

% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
R_spectra;

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
gm_param;


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
energy;


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
Fourier;









% % % %--------------------------------------------------------------------------
% % % % loading the Seismic data from file  - single record
% % % if set_content==1
% % % %reading from pre-specified file - GUI browse menu
% % % fid=fopen(file_path,'r');
% % % 
% % % if fformat==1
% % %         A = fscanf(fid,'%f',[1 Inf]); %The content of the file is loaded into array A
% % %         fclose(fid);
% % %         B=A'; %reversing matrix
% % %         acc_REC = B(:,1);               % acceleration from the record
% % % %         input_dt;                % time step of the record
% % %         mat_el = numel(B);              %number of the matrix elements
% % %         T_rec(1) =0;
% % %         for mat_t_el=2:1:mat_el
% % %         T_rec(mat_t_el) =T_rec(mat_t_el-1)+ dt_rec ;   % time intervals of the record
% % %         end
% % %         T_rec_end=max(abs(T_rec(mat_t_el)));     % end time of the record
% % %                 
% % % else if fformat==2
% % %         A = fscanf(fid,'%f',[2 Inf]); %The content of the file is loaded into array A
% % %         fclose(fid);
% % %         B=A'; %reversing matrix
% % % 
% % %         T_rec = B(:,1) ;                % time intervals of the record
% % %         T_rec_end=max(abs(B(:,1)));     % end time of the record
% % % %         input_dt;                % time step of the record
% % %         acc_REC = B(:,2);              % acceleration from the record
% % %     end
% % % end
% % % 
% % % %--------------------------------------------------------------------------
% % % %determining the acceleration units
% % % 
% % % if accformat==1
% % %     acc_cm=acc_REC.*g*100; %acceleration in [cm/s^2]
% % % else if accformat==2
% % %         acc_cm=acc_REC.*100; %acceleration in [cm/s^2]
% % %     else if accformat==3
% % %         acc_cm=acc_REC; %acceleration in [cm/s^2]
% % %         else
% % %         acc_cm=acc_REC./10; %acceleration in [cm/s^2]
% % %         end
% % %     end
% % % end
% % %         
% % % 
% % % %calculating the velocity and displacement
% % % vel= cumtrapz(T_rec,acc_cm);    %first integral of the acceleration -> velocity [cm/s]
% % % disp= cumtrapz(T_rec,vel);      %second integral of acceleration -> displacement [cm]
