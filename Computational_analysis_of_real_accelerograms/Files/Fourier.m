function varargout = Fourier(varargin)
% FOURIER MATLAB code for Fourier.fig
%      FOURIER, by itself, creates a new FOURIER or raises the existing
%      singleton*.
%
%      H = FOURIER returns the handle to a new FOURIER or the handle to
%      the existing singleton*.
%
%      FOURIER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FOURIER.M with the given input arguments.
%
%      FOURIER('Property','Value',...) creates a new FOURIER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Fourier_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Fourier_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Fourier

% Last Modified by GUIDE v2.5 29-Apr-2017 14:44:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Fourier_OpeningFcn, ...
                   'gui_OutputFcn',  @Fourier_OutputFcn, ...
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




% --- Executes just before Fourier is made visible.
function Fourier_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Fourier (see VARARGIN)

% Choose default command line output for Fourier
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Fourier wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Fourier_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

lstbx1={'Frequency'};
 set(handles.listbox1,'String',lstbx1);
lstbx2={'Fourier amplitude spectrum','Power spectrum density'};
 set(handles.listbox2,'String',lstbx2);


global file_path_acc_0 pathname_acc_0 file_name_acc_0 imp_data_acc_0 br_acc_0;
global file_path_acc_1 pathname_acc_1 file_name_acc_1 imp_data_acc_1 br_acc_1;
global file_path_acc_2 pathname_acc_2 file_name_acc_2 imp_data_acc_2 br_acc_2;
global file_path_acc_3 pathname_acc_3 file_name_acc_3 imp_data_acc_3 br_acc_3;
global file_path_acc_4 pathname_acc_4 file_name_acc_4 imp_data_acc_4 br_acc_4;
global file_path_acc_5 pathname_acc_5 file_name_acc_5 imp_data_acc_5 br_acc_5;
global file_path_acc_6 pathname_acc_6 file_name_acc_6 imp_data_acc_6 br_acc_6;
global file_path_acc_7 pathname_acc_7 file_name_acc_7 imp_data_acc_7 br_acc_7;
global set_content



%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
% defining visibility of the radio buttons and record names
if set_content==1
butt_group_1 = get(handles.uipanel6,'Children');
set(butt_group_1,'Enable','off');
set(handles.rb_rec_0,'String',file_name_acc_0(1:end-8));
else if set_content==7
    butt_group_2 = get(handles.uipanel7,'Children');
    set(butt_group_2,'Enable','off');
    set(handles.rb_rec_1,'String',file_name_acc_1(1:end-8))
    set(handles.rb_rec_2,'String',file_name_acc_2(1:end-8))
    set(handles.rb_rec_3,'String',file_name_acc_3(1:end-8))
    set(handles.rb_rec_4,'String',file_name_acc_4(1:end-8))
    set(handles.rb_rec_5,'String',file_name_acc_5(1:end-8))
    set(handles.rb_rec_6,'String',file_name_acc_6(1:end-8))
    set(handles.rb_rec_7,'String',file_name_acc_7(1:end-8))
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

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------



% --- Executes on button press in pb_analyse.
function pb_analyse_Callback(hObject, eventdata, handles)
% hObject    handle to pb_analyse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global set_content

global acc_cm_0 FAS_fft_0 FAS_freq_0 FAS_fft1_0 FAS_freq1_0 PSD1_0 PSD2_0 T_rec_end_0
global acc_cm_1 FAS_fft_1 FAS_freq_1 FAS_fft1_1 FAS_freq1_1 PSD1_1 PSD2_1 T_rec_end_1
global acc_cm_2 FAS_fft_2 FAS_freq_2 FAS_fft1_2 FAS_freq1_2 PSD1_2 PSD2_2 T_rec_end_2
global acc_cm_3 FAS_fft_3 FAS_freq_3 FAS_fft1_3 FAS_freq1_3 PSD1_3 PSD2_3 T_rec_end_3
global acc_cm_4 FAS_fft_4 FAS_freq_4 FAS_fft1_4 FAS_freq1_4 PSD1_4 PSD2_4 T_rec_end_4
global acc_cm_5 FAS_fft_5 FAS_freq_5 FAS_fft1_5 FAS_freq1_5 PSD1_5 PSD2_5 T_rec_end_5
global acc_cm_6 FAS_fft_6 FAS_freq_6 FAS_fft1_6 FAS_freq1_6 PSD1_6 PSD2_6 T_rec_end_6
global acc_cm_7 FAS_fft_7 FAS_freq_7 FAS_fft1_7 FAS_freq1_7 PSD1_7 PSD2_7 T_rec_end_7


global acc_cm input_dt T_rec_end FAS_fft FAS_freq FAS_fft1 FAS_freq1 PSD2 PSD1 s_type

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record


if set_content==1
  [ FAS_fft_0, FAS_freq_0, FAS_fft1_0, FAS_freq1_0, PSD2_0, PSD1_0 ] = FFT_function( acc_cm_0, T_rec_end_0, input_dt );
  
end



%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set


if set_content==7
    [ FAS_fft_1, FAS_freq_1, FAS_fft1_1, FAS_freq1_1, PSD2_1, PSD1_1 ] = FFT_function( acc_cm_1, T_rec_end_1, input_dt );
    [ FAS_fft_2, FAS_freq_2, FAS_fft1_2, FAS_freq1_2, PSD2_2, PSD1_2 ] = FFT_function( acc_cm_2, T_rec_end_2, input_dt );
    [ FAS_fft_3, FAS_freq_3, FAS_fft1_3, FAS_freq1_3, PSD2_3, PSD1_3 ] = FFT_function( acc_cm_3, T_rec_end_3, input_dt );
    [ FAS_fft_4, FAS_freq_4, FAS_fft1_4, FAS_freq1_4, PSD2_4, PSD1_4 ] = FFT_function( acc_cm_4, T_rec_end_4, input_dt );
    [ FAS_fft_5, FAS_freq_5, FAS_fft1_5, FAS_freq1_5, PSD2_5, PSD1_5 ] = FFT_function( acc_cm_5, T_rec_end_5, input_dt );
    [ FAS_fft_6, FAS_freq_6, FAS_fft1_6, FAS_freq1_6, PSD2_6, PSD1_6 ] = FFT_function( acc_cm_6, T_rec_end_6, input_dt );
    [ FAS_fft_7, FAS_freq_7, FAS_fft1_7, FAS_freq1_7, PSD2_7, PSD1_7 ] = FFT_function( acc_cm_7, T_rec_end_7, input_dt );
    

   
end


% % % % % % % acc =acc_cm/100;
% % % % % % % 
% % % % % % % 
% % % % % % % Ny = (1/input_dt)/2;                %Nyquist frequency (highest frequency)
% % % % % % % accft=acc;                          %Returning values in m/sec^2 for acceleration
% % % % % % % L_fft  = length(acc);               %Number of points in acceleration vector
% % % % % % % NFFT = 2^nextpow2(L_fft);           %Next power of 2 from length of acc
% % % % % % % df = 1./(NFFT*input_dt);            %Frequency spacing
% % % % % % % Amp_fft = fft(accft,NFFT);          %Fourier series 
% % % % % % % 
% % % % % % % FAS_fft=abs(Amp_fft)*input_dt;      %Fourier amplitudes double sided
% % % % % % % FAS_freq=(0:df:(1/input_dt)-df);    %Double sided frequencies
% % % % % % % FAS_fft1 = FAS_fft(1:Ny/df+1);      %Single sided FAS
% % % % % % % FAS_fft1(2:end-1)=2*FAS_fft1(2:end-1);
% % % % % % % FAS_freq1 = FAS_freq(1:Ny/df+1)';           %Single sided frequencies
% % % % % % % 
% % % % % % % arms_eq=sqrt((trapz(accft.^2)*input_dt)/T_rec_end); %Calculating the Arms
% % % % % % % arms=max(arms_eq);
% % % % % % % 
% % % % % % % PSD2=(((abs(Amp_fft)).^2)/(pi*L_fft*((arms)^2)))*input_dt;  %Double sided power spectrum density
% % % % % % % PSD1=PSD2(1:Ny/df+1);
% % % % % % % PSD1(2:end-1)=2*PSD1(2:end-1);      %Single sided power spectrum density


wait_gui=anal_ready;
waitfor(wait_gui);

set(handles.pb_plot,'enable','on')


switch get(get(handles.uipanel5,'SelectedObject'),'Tag')
      case 'radiobutton1',  s_type=1;  %defines the spectral type - single-sided or double sided
      case 'radiobutton2',  s_type=2;
end

% -------------------------------------------------------------------------

% --- Executes on button press in pb_plot.
function pb_plot_Callback(hObject, eventdata, handles)
% hObject    handle to pb_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% str=get(handles.listbox1, 'string');
% global value_string
% value_string= str;

global FAS_fft FAS_freq FAS_fft1 FAS_freq1 PSD2 PSD1 s_type FAS_max FAS_max_freq PSD_max PSD_max_freq
global set_content
global acc_cm_0 FAS_fft_0 FAS_freq_0 FAS_fft1_0 FAS_freq1_0 PSD1_0 PSD2_0 T_rec_end_0
global acc_cm_1 FAS_fft_1 FAS_freq_1 FAS_fft1_1 FAS_freq1_1 PSD1_1 PSD2_1 T_rec_end_1
global acc_cm_2 FAS_fft_2 FAS_freq_2 FAS_fft1_2 FAS_freq1_2 PSD1_2 PSD2_2 T_rec_end_2
global acc_cm_3 FAS_fft_3 FAS_freq_3 FAS_fft1_3 FAS_freq1_3 PSD1_3 PSD2_3 T_rec_end_3
global acc_cm_4 FAS_fft_4 FAS_freq_4 FAS_fft1_4 FAS_freq1_4 PSD1_4 PSD2_4 T_rec_end_4
global acc_cm_5 FAS_fft_5 FAS_freq_5 FAS_fft1_5 FAS_freq1_5 PSD1_5 PSD2_5 T_rec_end_5
global acc_cm_6 FAS_fft_6 FAS_freq_6 FAS_fft1_6 FAS_freq1_6 PSD1_6 PSD2_6 T_rec_end_6
global acc_cm_7 FAS_fft_7 FAS_freq_7 FAS_fft1_7 FAS_freq1_7 PSD1_7 PSD2_7 T_rec_end_7

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record


if set_content==1
  FAS_fft=FAS_fft_0;
  FAS_freq=FAS_freq_0;
  FAS_fft1=FAS_fft1_0;
  FAS_freq1=FAS_freq1_0;
  PSD2=PSD2_0;
  PSD1=PSD1_0;
  
  [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
  
end    
 

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set

if set_content==7    
  global select_rec; %selected record
switch get(get(handles.uipanel6,'SelectedObject'),'Tag')
      case 'rb_rec_1',  select_rec=1;
      case 'rb_rec_2',  select_rec=2;
      case 'rb_rec_3',  select_rec=3;    
      case 'rb_rec_4',  select_rec=4;    
      case 'rb_rec_5',  select_rec=5;    
      case 'rb_rec_6',  select_rec=6;    
      case 'rb_rec_7',  select_rec=7;    
end

if select_rec==1
      FAS_fft=FAS_fft_1;
      FAS_freq=FAS_freq_1;
      FAS_fft1=FAS_fft1_1;
      FAS_freq1=FAS_freq1_1;
      PSD2=PSD2_1;
      PSD1=PSD1_1;
      
      [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
      
    
else if select_rec==2
          FAS_fft=FAS_fft_2;
          FAS_freq=FAS_freq_2;
          FAS_fft1=FAS_fft1_2;
          FAS_freq1=FAS_freq1_2;
          PSD2=PSD2_2;
          PSD1=PSD1_2;
          
          [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
        
    else if select_rec==3
          FAS_fft=FAS_fft_3;
          FAS_freq=FAS_freq_3;
          FAS_fft1=FAS_fft1_3;
          FAS_freq1=FAS_freq1_3;
          PSD2=PSD2_3;
          PSD1=PSD1_3;
          
          [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
        
         else if select_rec==4
              FAS_fft=FAS_fft_4;
              FAS_freq=FAS_freq_4;
              FAS_fft1=FAS_fft1_4;
              FAS_freq1=FAS_freq1_4;
              PSD2=PSD2_4;
              PSD1=PSD1_4;
              
              [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
  
                else if select_rec==5
                  FAS_fft=FAS_fft_5;
                  FAS_freq=FAS_freq_5;
                  FAS_fft1=FAS_fft1_5;
                  FAS_freq1=FAS_freq1_5;
                  PSD2=PSD2_5;
                  PSD1=PSD1_5;
                  
                  [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
  
                        else if select_rec==6
                          FAS_fft=FAS_fft_6;
                          FAS_freq=FAS_freq_6;
                          FAS_fft1=FAS_fft1_6;
                          FAS_freq1=FAS_freq1_6;
                          PSD2=PSD2_6;
                          PSD1=PSD1_6;
                          
                          [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
  FAS_max_freq=FAS_freq1(indx_FAS_max);
  [PSD_max,indx_PSD_max]=max(abs(PSD1));
  PSD_max_freq=FAS_freq1(indx_PSD_max);
  
                                else if select_rec==7
                                      FAS_fft=FAS_fft_7;
                                      FAS_freq=FAS_freq_7;
                                      FAS_fft1=FAS_fft1_7;
                                      FAS_freq1=FAS_freq1_7;
                                      PSD2=PSD2_7;
                                      PSD1=PSD1_7;
                                      
                                      [FAS_max,indx_FAS_max]=max(abs(FAS_fft1));
                                      FAS_max_freq=FAS_freq1(indx_FAS_max);
                                      [PSD_max,indx_PSD_max]=max(abs(PSD1));
                                      PSD_max_freq=FAS_freq1(indx_PSD_max);
  
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
if s_type==2

    ListBoxValue1 = get(handles.listbox1,'Value');
    if ListBoxValue1==1
        plot_x=FAS_freq;
        x_label='Frequency (Hz)';
    end

    ListBoxValue2 = get(handles.listbox2,'Value');
    if ListBoxValue2==1
        plot_y=FAS_fft;
        y_label='Fourier Amplitude [m/s]';
    elseif ListBoxValue2==2
        plot_y=PSD2;
        y_label='Power Spectral Density [1/Hz]';
    end
    
elseif s_type==1
    
    ListBoxValue1 = get(handles.listbox1,'Value');
    if ListBoxValue1==1
        plot_x=FAS_freq1;
        x_label='Frequency (Hz)';
    end

    ListBoxValue2 = get(handles.listbox2,'Value');
    if ListBoxValue2==1
        plot_y=FAS_fft1;
        y_label='Fourier Amplitude [m/s]';
    elseif ListBoxValue2==2
        plot_y=PSD1;
        y_label='Power Spectrum Density [1/Hz]';
    end
end
    
axes(handles.axes1);
plot(plot_x,  plot_y);
grid ;
xlabel(x_label);
ylabel(y_label) ;


%--------------------------------------------------------------------------
%plot values
set(handles.uitable1,'visible','on');

if s_type==2
    
ListBoxValue1 = get(handles.listbox1,'Value');
if ListBoxValue1==1
    acc_tt(:,1)=FAS_freq;  %copy data to a matrix, prepared for data input in table
    c_label1='Frequency (Hz)';
end

ListBoxValue2 = get(handles.listbox2,'Value');
if ListBoxValue2==1
    acc_tt(:,2)=FAS_fft;
    c_label2='Fourier Amplitude [m/s]';
elseif ListBoxValue2==2
    acc_tt(:,2)=PSD2;
    c_label2='Power Spectrum Density [1/Hz]';
end
end

if s_type==1
    
ListBoxValue1 = get(handles.listbox1,'Value');
if ListBoxValue1==1
    acc_tt(:,1)=FAS_freq1;  %copy data to a matrix, prepared for data input in table
    c_label1='Frequency (Hz)';
end

ListBoxValue2 = get(handles.listbox2,'Value');
if ListBoxValue2==1
    acc_tt(:,2)=FAS_fft1;
    c_label2='Fourier Amplitude [m/s]';
elseif ListBoxValue2==2
    acc_tt(:,2)=PSD1;
    c_label2='Power Spectrum Density [1/Hz]';
end
end


set(handles.uitable1, 'ColumnName', {c_label1 c_label2 });
set(handles.uitable1, 'data', acc_tt);


% --- Executes on button press in pb_clear.
function pb_clear_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
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
R_spectra;
