function varargout = R_spectra(varargin)
% R_SPECTRA MATLAB code for R_spectra.fig
%      R_SPECTRA, by itself, creates a new R_SPECTRA or raises the existing
%      singleton*.
%
%      H = R_SPECTRA returns the handle to a new R_SPECTRA or the handle to
%      the existing singleton*.
%
%      R_SPECTRA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in R_SPECTRA.M with the given input arguments.
%
%      R_SPECTRA('Property','Value',...) creates a new R_SPECTRA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before R_spectra_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to R_spectra_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help R_spectra

% Last Modified by GUIDE v2.5 29-Apr-2017 16:12:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @R_spectra_OpeningFcn, ...
                   'gui_OutputFcn',  @R_spectra_OutputFcn, ...
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




% --- Executes just before R_spectra is made visible.
function R_spectra_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to R_spectra (see VARARGIN)

% Choose default command line output for R_spectra
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes R_spectra wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = R_spectra_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

lstbx1={'Period'};
 set(handles.listbox1,'String',lstbx1);
lstbx2={'Displacement','Velocity','Acceleration','Pseudo-Velocity','Pseudo-Acceleration'};
 set(handles.listbox2,'String',lstbx2);
 
 
global  file_name_acc_0 ;
global  file_name_acc_1 ;
global  file_name_acc_2 ;
global  file_name_acc_3 ;
global  file_name_acc_4 ;
global  file_name_acc_5 ;
global  file_name_acc_6 ;
global  file_name_acc_7 ;
global set_content

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% defining visibility of the radio buttons and record names
if set_content==1
butt_group_1 = get(handles.uipanel5,'Children');
set(butt_group_1,'Enable','off');
set(handles.rb_rec_0,'String',file_name_acc_0(1:end-4));
else if set_content==7
    butt_group_2 = get(handles.uipanel6,'Children');
    set(butt_group_2,'Enable','off');
    set(handles.rb_rec_1,'String',file_name_acc_1(1:end-4))
    set(handles.rb_rec_2,'String',file_name_acc_2(1:end-4))
    set(handles.rb_rec_3,'String',file_name_acc_3(1:end-4))
    set(handles.rb_rec_4,'String',file_name_acc_4(1:end-4))
    set(handles.rb_rec_5,'String',file_name_acc_5(1:end-4))
    set(handles.rb_rec_6,'String',file_name_acc_6(1:end-4))
    set(handles.rb_rec_7,'String',file_name_acc_7(1:end-4))
    end
     
end




% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1




% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2





% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pb_analyse.
function pb_analyse_Callback(hObject, eventdata, handles)
% hObject    handle to pb_analyse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global acc_cm T_rec_end input_dt dTn Tn_max disp vel
global SD SA SV SPV SPA EI EI_abs
global set_content
global acc_cm_0 vel_cm_0 disp_cm_0  T_rec_end_0 tota_0 totv_0 totd_0 EI_0 EI_abs_0 SA_0 SV_0 SD_0 SPV_0 SPA_0  
global acc_cm_1 vel_cm_1 disp_cm_1  T_rec_end_1 tota_1 totv_1 totd_1 EI_1 EI_abs_1 SA_1 SV_1 SD_1 SPV_1 SPA_1
global acc_cm_2 vel_cm_2 disp_cm_2  T_rec_end_2 tota_2 totv_2 totd_2 EI_2 EI_abs_2 SA_2 SV_2 SD_2 SPV_2 SPA_2
global acc_cm_3 vel_cm_3 disp_cm_3  T_rec_end_3 tota_3 totv_3 totd_3 EI_3 EI_abs_3 SA_3 SV_3 SD_3 SPV_3 SPA_3
global acc_cm_4 vel_cm_4 disp_cm_4  T_rec_end_4 tota_4 totv_4 totd_4 EI_4 EI_abs_4 SA_4 SV_4 SD_4 SPV_4 SPA_4
global acc_cm_5 vel_cm_5 disp_cm_5  T_rec_end_5 tota_5 totv_5 totd_5 EI_5 EI_abs_5 SA_5 SV_5 SD_5 SPV_5 SPA_5
global acc_cm_6 vel_cm_6 disp_cm_6  T_rec_end_6 tota_6 totv_6 totd_6 EI_6 EI_abs_6 SA_6 SV_6 SD_6 SPV_6 SPA_6
global acc_cm_7 vel_cm_7 disp_cm_7  T_rec_end_7 tota_7 totv_7 totd_7 EI_7 EI_abs_7 SA_7 SV_7 SD_7 SPV_7 SPA_7



%--------------------------------------------------------------------------
%extracting damping coefficient
global xi_in
str=get(handles.edit6, 'string');
xi_in= str2double(str);

%--------------------------------------------------------------------------
%extracting Newmark coefficients
global beta_in
str=get(handles.edit1, 'string');
beta_in= str2double(str);
global gamma_in
str=get(handles.edit2, 'string');
gamma_in= str2double(str);


%--------------------------------------------------------------------------
%Calculating displacement response spectrum
pi=3.14;
M=1;        %Mass of the SDoF system

Tn_max=4;           %Maximum period time [s]
dTn=0.01;           %Time interval [s]
Tn=0:dTn:Tn_max;    %Period [s]
Tn_l=length(Tn);    %Length of the period


% EIn=zeros(Tn_l);

%defining the type of the Newmark's method
%Average acceleration -     beta=1/4;   gamma=1/2;
%Linear acceleration -      beta=1/6;   gamma=1/2;

%Selection should be made by radio button
%'Average' 
%         gamma_in;	%Newmark acceleration type coefficient
%         beta_in;     %Newmark acceleration type coefficient
% %'Linear'
%         gamma = 1/2;  %Newmark acceleration type coefficient
%         beta = 1/6 ;  %Newmark acceleration type coefficient

j=0;    %Counter
 





%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record

if set_content==1
    
totd_0=zeros(Tn_l);       %Initial size of the total displacement
totv_0=zeros(Tn_l);       %Initial size of the total velocity
tota_0=zeros(Tn_l);       %Initial size of the total acceleration
EI_0=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_0=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

for Tn=0:dTn:Tn_max
    Omega=2*pi/Tn;          %Eigen frequency of the SDoF system
    K=(Omega/M)*(Omega/M);  %Stiffness coefficient of the SDoF system
    xi=xi_in/100;           %Damping ratio
    C=2*xi*Omega;           %Damping coefficient
           
    j=j+1;   

    [disp_SD_0,vel_SV_0,acc_SA_0,EI_nmrk_0,EI_abs_nmrk_0] = NewmarkMethod(M,K,C,acc_cm_0,beta_in,gamma_in,T_rec_end_0,input_dt,disp_cm_0,vel_cm_0) ;
    
    totd_0(j)=max(abs(disp_SD_0));          %Total displacement
    totv_0(j)=max(abs(vel_SV_0));           %Total velocity
    tota_0(j)=max(abs(acc_SA_0));           %Total acceleration
    EI_0(j)=-max(abs(EI_nmrk_0));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_0(j)=max(abs(EI_abs_nmrk_0));   %Absolute Input energy EI calculated by Uang and Bertero

end
    
Tn=0:dTn:Tn_max; %setting the period interval and step

totd_t_0=totd_0';   %Transponse the matrix
totv_t_0=totv_0';   %Transponse the matrix
tota_t_0=tota_0';   %Transponse the matrix

SV_0=totv_t_0(1,:); %Velocity in cm/s

SD_0=totd_t_0(1,:); %Displacement in cm

SA_0=tota_t_0(1,:); %Acceleration in cm/s^2



[ SPV_0, SPA_0 ] = PSV_PSA( Tn, dTn, Tn_max, SD_0  );

end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set


if set_content==7

totd_1=zeros(Tn_l);       %Initial size of the total displacement
totv_1=zeros(Tn_l);       %Initial size of the total velocity
tota_1=zeros(Tn_l);       %Initial size of the total acceleration
EI_1=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_1=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

totd_2=zeros(Tn_l);       %Initial size of the total displacement
totv_2=zeros(Tn_l);       %Initial size of the total velocity
tota_2=zeros(Tn_l);       %Initial size of the total acceleration
EI_2=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_2=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

totd_3=zeros(Tn_l);       %Initial size of the total displacement
totv_3=zeros(Tn_l);       %Initial size of the total velocity
tota_3=zeros(Tn_l);       %Initial size of the total acceleration
EI_3=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_3=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

totd_4=zeros(Tn_l);       %Initial size of the total displacement
totv_4=zeros(Tn_l);       %Initial size of the total velocity
tota_4=zeros(Tn_l);       %Initial size of the total acceleration
EI_4=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_4=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

totd_5=zeros(Tn_l);       %Initial size of the total displacement
totv_5=zeros(Tn_l);       %Initial size of the total velocity
tota_5=zeros(Tn_l);       %Initial size of the total acceleration
EI_5=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_5=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

totd_6=zeros(Tn_l);       %Initial size of the total displacement
totv_6=zeros(Tn_l);       %Initial size of the total velocity
tota_6=zeros(Tn_l);       %Initial size of the total acceleration
EI_6=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_6=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

totd_7=zeros(Tn_l);       %Initial size of the total displacement
totv_7=zeros(Tn_l);       %Initial size of the total velocity
tota_7=zeros(Tn_l);       %Initial size of the total acceleration
EI_7=zeros(Tn_l,1);       %Relative input energy EI calculated by Almansa formulation
EI_abs_7=zeros(Tn_l,1);   %Absolute input energy EI calculated by Molaiolli

for Tn=0:dTn:Tn_max
    Omega=2*pi/Tn;          %Eigen frequency of the SDoF system
    K=(Omega/M)*(Omega/M);  %Stiffness coefficient of the SDoF system
    xi=xi_in/100;           %Damping ratio
    C=2*xi*Omega;           %Damping coefficient
           
    j=j+1;   

    [disp_SD_1,vel_SV_1,acc_SA_1,EI_nmrk_1,EI_abs_nmrk_1] = NewmarkMethod(M,K,C,acc_cm_1,beta_in,gamma_in,T_rec_end_1,input_dt,disp_cm_1,vel_cm_1) ;
    [disp_SD_2,vel_SV_2,acc_SA_2,EI_nmrk_2,EI_abs_nmrk_2] = NewmarkMethod(M,K,C,acc_cm_2,beta_in,gamma_in,T_rec_end_2,input_dt,disp_cm_2,vel_cm_2) ;
    [disp_SD_3,vel_SV_3,acc_SA_3,EI_nmrk_3,EI_abs_nmrk_3] = NewmarkMethod(M,K,C,acc_cm_3,beta_in,gamma_in,T_rec_end_3,input_dt,disp_cm_3,vel_cm_3) ;
    [disp_SD_4,vel_SV_4,acc_SA_4,EI_nmrk_4,EI_abs_nmrk_4] = NewmarkMethod(M,K,C,acc_cm_4,beta_in,gamma_in,T_rec_end_4,input_dt,disp_cm_4,vel_cm_4) ;
    [disp_SD_5,vel_SV_5,acc_SA_5,EI_nmrk_5,EI_abs_nmrk_5] = NewmarkMethod(M,K,C,acc_cm_5,beta_in,gamma_in,T_rec_end_5,input_dt,disp_cm_5,vel_cm_5) ;
    [disp_SD_6,vel_SV_6,acc_SA_6,EI_nmrk_6,EI_abs_nmrk_6] = NewmarkMethod(M,K,C,acc_cm_6,beta_in,gamma_in,T_rec_end_6,input_dt,disp_cm_6,vel_cm_6) ;
    [disp_SD_7,vel_SV_7,acc_SA_7,EI_nmrk_7,EI_abs_nmrk_7] = NewmarkMethod(M,K,C,acc_cm_7,beta_in,gamma_in,T_rec_end_7,input_dt,disp_cm_7,vel_cm_7) ;
    
    totd_1(j)=max(abs(disp_SD_1));          %Total displacement
    totv_1(j)=max(abs(vel_SV_1));           %Total velocity
    tota_1(j)=max(abs(acc_SA_1));           %Total acceleration
    EI_1(j)=-max(abs(EI_nmrk_1));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_1(j)=max(abs(EI_abs_nmrk_1));   %Absolute Input energy EI calculated by Uang and Bertero
    
    totd_2(j)=max(abs(disp_SD_2));          %Total displacement
    totv_2(j)=max(abs(vel_SV_2));           %Total velocity
    tota_2(j)=max(abs(acc_SA_2));           %Total acceleration
    EI_2(j)=-max(abs(EI_nmrk_2));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_2(j)=max(abs(EI_abs_nmrk_2));   %Absolute Input energy EI calculated by Uang and Bertero
    
    totd_3(j)=max(abs(disp_SD_3));          %Total displacement
    totv_3(j)=max(abs(vel_SV_3));           %Total velocity
    tota_3(j)=max(abs(acc_SA_3));           %Total acceleration
    EI_3(j)=-max(abs(EI_nmrk_3));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_3(j)=max(abs(EI_abs_nmrk_3));   %Absolute Input energy EI calculated by Uang and Bertero
    
    totd_4(j)=max(abs(disp_SD_4));          %Total displacement
    totv_4(j)=max(abs(vel_SV_4));           %Total velocity
    tota_4(j)=max(abs(acc_SA_4));           %Total acceleration
    EI_4(j)=-max(abs(EI_nmrk_4));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_4(j)=max(abs(EI_abs_nmrk_4));   %Absolute Input energy EI calculated by Uang and Bertero
    
    totd_5(j)=max(abs(disp_SD_5));          %Total displacement
    totv_5(j)=max(abs(vel_SV_5));           %Total velocity
    tota_5(j)=max(abs(acc_SA_5));           %Total acceleration
    EI_5(j)=-max(abs(EI_nmrk_5));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_5(j)=max(abs(EI_abs_nmrk_5));   %Absolute Input energy EI calculated by Uang and Bertero
    
    totd_6(j)=max(abs(disp_SD_6));          %Total displacement
    totv_6(j)=max(abs(vel_SV_6));           %Total velocity
    tota_6(j)=max(abs(acc_SA_6));           %Total acceleration
    EI_6(j)=-max(abs(EI_nmrk_6));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_6(j)=max(abs(EI_abs_nmrk_6));   %Absolute Input energy EI calculated by Uang and Bertero
    
    totd_7(j)=max(abs(disp_SD_7));          %Total displacement
    totv_7(j)=max(abs(vel_SV_7));           %Total velocity
    tota_7(j)=max(abs(acc_SA_7));           %Total acceleration
    EI_7(j)=-max(abs(EI_nmrk_7));           %Relative Input energy EI calculated by Almansa formulation
    EI_abs_7(j)=max(abs(EI_abs_nmrk_7));   %Absolute Input energy EI calculated by Uang and Bertero

end    
    
Tn=0:dTn:Tn_max; %setting the period interval and step

totd_t_1=totd_1';   %Transponse the matrix
totv_t_1=totv_1';   %Transponse the matrix
tota_t_1=tota_1';   %Transponse the matrix

SV_1=totv_t_1(1,:); %Velocity in cm/s

SD_1=totd_t_1(1,:); %Displacement in cm

SA_1=tota_t_1(1,:); %Acceleration in cm/s^2

totd_t_2=totd_2';   %Transponse the matrix
totv_t_2=totv_2';   %Transponse the matrix
tota_t_2=tota_2';   %Transponse the matrix

SV_2=totv_t_2(1,:); %Velocity in cm/s

SD_2=totd_t_2(1,:); %Displacement in cm

SA_2=tota_t_2(1,:); %Acceleration in cm/s^2

totd_t_3=totd_3';   %Transponse the matrix
totv_t_3=totv_3';   %Transponse the matrix
tota_t_3=tota_3';   %Transponse the matrix

SV_3=totv_t_3(1,:); %Velocity in cm/s

SD_3=totd_t_3(1,:); %Displacement in cm

SA_3=tota_t_3(1,:); %Acceleration in cm/s^2

totd_t_4=totd_4';   %Transponse the matrix
totv_t_4=totv_4';   %Transponse the matrix
tota_t_4=tota_4';   %Transponse the matrix

SV_4=totv_t_4(1,:); %Velocity in cm/s

SD_4=totd_t_4(1,:); %Displacement in cm

SA_4=tota_t_4(1,:); %Acceleration in cm/s^2

totd_t_5=totd_5';   %Transponse the matrix
totv_t_5=totv_5';   %Transponse the matrix
tota_t_5=tota_5';   %Transponse the matrix

SV_5=totv_t_5(1,:); %Velocity in cm/s

SD_5=totd_t_5(1,:); %Displacement in cm

SA_5=tota_t_5(1,:); %Acceleration in cm/s^2

totd_t_6=totd_6';   %Transponse the matrix
totv_t_6=totv_6';   %Transponse the matrix
tota_t_6=tota_6';   %Transponse the matrix

SV_6=totv_t_6(1,:); %Velocity in cm/s

SD_6=totd_t_6(1,:); %Displacement in cm

SA_6=tota_t_6(1,:); %Acceleration in cm/s^2

totd_t_7=totd_7';   %Transponse the matrix
totv_t_7=totv_7';   %Transponse the matrix
tota_t_7=tota_7';   %Transponse the matrix

SV_7=totv_t_7(1,:); %Velocity in cm/s

SD_7=totd_t_7(1,:); %Displacement in cm

SA_7=tota_t_7(1,:); %Acceleration in cm/s^2


[ SPV_1, SPA_1 ] = PSV_PSA( Tn, dTn, Tn_max, SD_1  );
[ SPV_2, SPA_2 ] = PSV_PSA( Tn, dTn, Tn_max, SD_2  );
[ SPV_3, SPA_3 ] = PSV_PSA( Tn, dTn, Tn_max, SD_3  );
[ SPV_4, SPA_4 ] = PSV_PSA( Tn, dTn, Tn_max, SD_4  );
[ SPV_5, SPA_5 ] = PSV_PSA( Tn, dTn, Tn_max, SD_5  );
[ SPV_6, SPA_6 ] = PSV_PSA( Tn, dTn, Tn_max, SD_6  );
[ SPV_7, SPA_7 ] = PSV_PSA( Tn, dTn, Tn_max, SD_7  );

end


wait_gui=anal_ready;
waitfor(wait_gui);

set(handles.pb_plot,'enable','on')



% -------------------------------------------------------------------------

% --- Executes on button press in pb_plot.
function pb_plot_Callback(hObject, eventdata, handles)
% hObject    handle to pb_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% str=get(handles.listbox1, 'string');
% global value_string
% value_string= str;


global SD SA SV dTn Tn_max SPV SPA unit_coeff_acc unit_label_acc unit_coeff_vel unit_label_vel unit_coeff_disp unit_label_disp

global set_content
global  SA_0 SV_0 SD_0 SPV_0 SPA_0  
global  SA_1 SV_1 SD_1 SPV_1 SPA_1
global  SA_2 SV_2 SD_2 SPV_2 SPA_2
global  SA_3 SV_3 SD_3 SPV_3 SPA_3
global  SA_4 SV_4 SD_4 SPV_4 SPA_4
global  SA_5 SV_5 SD_5 SPV_5 SPA_5
global  SA_6 SV_6 SD_6 SPV_6 SPA_6
global  SA_7 SV_7 SD_7 SPV_7 SPA_7

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record


if set_content==1

    SD=SD_0;
    SV=SV_0;
    SA=SA_0;
    SPV=SPV_0;
    SPA=SPA_0;

end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set

if set_content==7    
  global select_rec; %selected record
switch get(get(handles.uipanel5,'SelectedObject'),'Tag')
      case 'rb_rec_1',  select_rec=1;
      case 'rb_rec_2',  select_rec=2;
      case 'rb_rec_3',  select_rec=3;    
      case 'rb_rec_4',  select_rec=4;    
      case 'rb_rec_5',  select_rec=5;    
      case 'rb_rec_6',  select_rec=6;    
      case 'rb_rec_7',  select_rec=7;    
end

if select_rec==1
      SD=SD_1;
        SV=SV_1;
        SA=SA_1;
        SPV=SPV_1;
        SPA=SPA_1;
    
else if select_rec==2
          SD=SD_2;
            SV=SV_2;
            SA=SA_2;
            SPV=SPV_2;
            SPA=SPA_2;
        
    else if select_rec==3
          SD=SD_3;
            SV=SV_3;
            SA=SA_3;
            SPV=SPV_3;
            SPA=SPA_3;
        
         else if select_rec==4
              SD=SD_4;
                SV=SV_4;
                SA=SA_4;
                SPV=SPV_4;
                SPA=SPA_4;
                else if select_rec==5
                  SD=SD_5;
                    SV=SV_5;
                    SA=SA_5;
                    SPV=SPV_5;
                    SPA=SPA_5;
                        else if select_rec==6
                          SD=SD_6;
                            SV=SV_6;
                            SA=SA_6;
                            SPV=SPV_6;
                            SPA=SPA_6;
                                else if select_rec==7
                                      SD=SD_7;
                                        SV=SV_7;
                                        SA=SA_7;
                                        SPV=SPV_7;
                                        SPA=SPA_7;
                                    end
                            end
                    end
             end
        end
    end
end  

end


%--------------------------------------------------------------------------
%plot result graphs

ListBoxValue1 = get(handles.listbox1,'Value');
if ListBoxValue1==1
    plot_x=0:dTn:Tn_max;
    x_label='Period (s)';
end

ListBoxValue2 = get(handles.listbox2,'Value');
if ListBoxValue2==1
    plot_y=SD*unit_coeff_disp;
    y_label=strjoin({'Displacement spectra (',unit_label_disp,')'});
elseif ListBoxValue2==2
    plot_y=SV*unit_coeff_vel;
    y_label=strjoin({'Velocity spectra (',unit_label_vel,')'});
elseif ListBoxValue2==3
    plot_y=SA*unit_coeff_acc;
    y_label=strjoin({'Acceleration spectra (',unit_label_acc,')'});
elseif ListBoxValue2==4
    plot_y=SPV*unit_coeff_vel;
    y_label=strjoin({'Pseudo-velocity (',unit_label_vel,')'});
elseif ListBoxValue2==5
    plot_y=SPA*unit_coeff_acc;
    y_label=strjoin({'Pseudo-acceleration (',unit_label_acc,')'});
end


axes(handles.axes1);
plot(plot_x,  plot_y);
grid ;
xlabel(x_label);
ylabel(y_label) ;



%--------------------------------------------------------------------------
%plot values
set(handles.uitable1,'visible','on');

ListBoxValue1 = get(handles.listbox1,'Value');
if ListBoxValue1==1
    acc_tt(:,1)=0:dTn:Tn_max;  %copy data to a matrix, prepared for data input in table
    c_label1='Period (s)';
end

ListBoxValue2 = get(handles.listbox2,'Value');
if ListBoxValue2==1
    acc_tt(:,2)=SD*unit_coeff_disp;
    c_label2=strjoin({'Displacement spectra (',unit_label_disp,')'});
elseif ListBoxValue2==2
    acc_tt(:,2)=SV*unit_coeff_vel;
    c_label2=strjoin({'Velocity spectra (',unit_label_vel,')'});
elseif ListBoxValue2==3
    acc_tt(:,2)=SA*unit_coeff_acc;
    c_label2=strjoin({'Acceleration spectra (',unit_label_acc,')'});
elseif ListBoxValue2==4
    acc_tt(:,2)=SPV*unit_coeff_vel;
    c_label2=strjoin({'Pseudo-velocity (',unit_label_vel,')'});
elseif ListBoxValue2==5
    acc_tt(:,2)=SPA*unit_coeff_acc;
    c_label2=strjoin({'Pseudo-acceleration (',unit_label_acc,')'});
end


set(handles.uitable1, 'ColumnName', {c_label1 c_label2 });
set(handles.uitable1, 'data', acc_tt);


% --- Executes on button press in pb_clear.
function pb_clear_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit1, 'string','0.25');
set(handles.edit2, 'string','0.5');
set(handles.edit6, 'string','5');
axes(handles.axes1);
cla;
xlabel('');
ylabel('') ;

set(handles.uitable1,'visible','off');



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
time_series;

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
