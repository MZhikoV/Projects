function varargout = acc_load_02(varargin)
% ACC_LOAD_02 MATLAB code for acc_load_02.fig
%      ACC_LOAD_02, by itself, creates a new ACC_LOAD_02 or raises the existing
%      singleton*.
%
%      H = ACC_LOAD_02 returns the handle to a new ACC_LOAD_02 or the handle to
%      the existing singleton*.
%
%      ACC_LOAD_02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ACC_LOAD_02.M with the given input arguments.
%
%      ACC_LOAD_02('Property','Value',...) creates a new ACC_LOAD_02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before acc_load_02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to acc_load_02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help acc_load_02

% Last Modified by GUIDE v2.5 26-Apr-2017 15:03:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @acc_load_02_OpeningFcn, ...
                   'gui_OutputFcn',  @acc_load_02_OutputFcn, ...
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


% --- Executes just before acc_load_02 is made visible.
function acc_load_02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to acc_load_02 (see VARARGIN)

% Choose default command line output for acc_load_02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes acc_load_02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = acc_load_02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% % % --- Executes on button press in pb_browse.
% % function pb_browse_Callback(hObject, eventdata, handles)
% % % hObject    handle to pb_browse (see GCBO)
% % % eventdata  reserved - to be defined in a future version of MATLAB
% % % handles    structure with handles and user data (see GUIDATA)
% % global file_path;
% % [acc_file_name, pathname_acc] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
% % fullpathname_acc=strcat(pathname_acc,acc_file_name);
% % imp_data=importdata(fullpathname_acc,'');
% % file_path=fullpathname_acc;
% % set(handles.txt_preview,'String',imp_data);
% % guidata(hObject, handles);




function txt_fline_Callback(hObject, eventdata, handles)
% hObject    handle to txt_fline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_fline as text
%        str2double(get(hObject,'String')) returns contents of txt_fline as a double



% --- Executes during object creation, after setting all properties.
function txt_fline_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_fline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_lline_Callback(hObject, eventdata, handles)
% hObject    handle to txt_lline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_lline as text
%        str2double(get(hObject,'String')) returns contents of txt_lline as a double



% --- Executes during object creation, after setting all properties.
function txt_lline_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_lline (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txt_dt_Callback(hObject, eventdata, handles)
% hObject    handle to txt_dt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txt_dt as text
%        str2double(get(hObject,'String')) returns contents of txt_dt as a double



% --- Executes during object creation, after setting all properties.
function txt_dt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txt_dt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end














%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
% Single record


% --- Executes on button press in pb_browse_disp_0.
function pb_browse_disp_0_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_0 pathname_disp_0 file_name_disp_0 imp_data_disp_0 br_disp_0;
[file_name_disp_0, pathname_disp_0] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_0=strcat(pathname_disp_0,file_name_disp_0);
imp_data_disp_0=file_name_disp_0(1:end-4);
file_path_disp_0=fullpathname_disp_0;
br_disp_0=1;
set(handles.txt_disp_0,'String',imp_data_disp_0);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_0.
function pb_clear_disp_0_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_0, 'string','Load displacement 1');
global file_path_disp_0 br_disp_0;
file_path_disp_0=0;
br_disp_0=0;


% --- Executes on button press in pb_browse_vel_0.
function pb_browse_vel_0_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_0 pathname_vel_0 file_name_vel_0 imp_data_vel_0 br_vel_0;
[file_name_vel_0, pathname_vel_0] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_0=strcat(pathname_vel_0,file_name_vel_0);
imp_data_vel_0=file_name_vel_0(1:end-4);
file_path_vel_0=fullpathname_vel_0;
br_vel_0=1;
set(handles.txt_vel_0,'String',imp_data_vel_0);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_0.
function pb_clear_vel_0_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_0, 'string','Load velocity 1');
global file_path_vel_0 br_vel_0;
file_path_vel_0=0;
br_vel_0=0;



% --- Executes on button press in pb_browse_acc_0.
function pb_browse_acc_0_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_0 pathname_acc_0 file_name_acc_0 imp_data_acc_0 br_acc_0;
[file_name_acc_0, pathname_acc_0] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_0=strcat(pathname_acc_0,file_name_acc_0);
imp_data_acc_0=file_name_acc_0(1:end-4);
file_path_acc_0=fullpathname_acc_0;
br_acc_0=1;
set(handles.txt_acc_0,'String',imp_data_acc_0);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_0.
function pb_clear_acc_0_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_0, 'string','Load acceleration 1');
global file_path_acc_0 br_acc_0;
file_path_acc_0=0;
br_acc_0=0;



%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
% 7 records set



% --- Executes on button press in pb_browse_disp_1.
function pb_browse_disp_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_1 pathname_disp_1 file_name_disp_1 imp_data_disp_1 br_disp_1;
[file_name_disp_1, pathname_disp_1] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_1=strcat(pathname_disp_1,file_name_disp_1);
imp_data_disp_1=file_name_disp_1(1:end-4);
file_path_disp_1=fullpathname_disp_1;
br_disp_1=1;
set(handles.txt_disp_1,'String',imp_data_disp_1);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_1.
function pb_clear_disp_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_1, 'string','Load displacement 1');
global file_path_disp_1 br_disp_1;
file_path_disp_1=0;
br_disp_1=0;




% --- Executes on button press in pb_browse_vel_1.
function pb_browse_vel_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_1 pathname_vel_1 file_name_vel_1 imp_data_vel_1 br_vel_1;
[file_name_vel_1, pathname_vel_1] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_1=strcat(pathname_vel_1,file_name_vel_1);
imp_data_vel_1=file_name_vel_1(1:end-4);
file_path_vel_1=fullpathname_vel_1;
br_vel_1=1;
set(handles.txt_vel_1,'String',imp_data_vel_1);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_1.
function pb_clear_vel_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_1, 'string','Load velocity 1');
global file_path_vel_1 br_vel_1;
file_path_vel_1=0;
br_vel_1=0;


% --- Executes on button press in pb_browse_acc_1.
function pb_browse_acc_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_1 pathname_acc_1 file_name_acc_1 imp_data_acc_1 br_acc_1;
[file_name_acc_1, pathname_acc_1] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_1=strcat(pathname_acc_1,file_name_acc_1);
imp_data_acc_1=file_name_acc_1(1:end-4);
file_path_acc_1=fullpathname_acc_1;
br_acc_1=1;
set(handles.txt_acc_1,'String',imp_data_acc_1);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_1.
function pb_clear_acc_1_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_1, 'string','Load acceleration 1');
global file_path_acc_1 br_acc_1;
file_path_acc_1=0;
br_acc_1=0;



% --- Executes on button press in pb_browse_disp_2.
function pb_browse_disp_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_2 pathname_disp_2 file_name_disp_2 imp_data_disp_2 br_disp_2;
[file_name_disp_2, pathname_disp_2] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_2=strcat(pathname_disp_2,file_name_disp_2);
imp_data_disp_2=file_name_disp_2(1:end-4);
file_path_disp_2=fullpathname_disp_2;
br_disp_2=1;
set(handles.txt_disp_2,'String',imp_data_disp_2);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_2.
function pb_clear_disp_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_2, 'string','Load displacement 2');
global file_path_disp_2 br_disp_2;
file_path_disp_2=0;
br_disp_2=0;


% --- Executes on button press in pb_browse_vel_2.
function pb_browse_vel_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_2 pathname_vel_2 file_name_vel_2 imp_data_vel_2 br_vel_2;
[file_name_vel_2, pathname_vel_2] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_2=strcat(pathname_vel_2,file_name_vel_2);
imp_data_vel_2=file_name_vel_2(1:end-4);
file_path_vel_2=fullpathname_vel_2;
br_vel_2=1;
set(handles.txt_vel_2,'String',imp_data_vel_2);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_2.
function pb_clear_vel_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_2, 'string','Load velocity 2');
global file_path_vel_2 br_vel_2;
file_path_vel_2=0;
br_vel_2=0;


% --- Executes on button press in pb_browse_acc_2.
function pb_browse_acc_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_2 pathname_acc_2 file_name_acc_2 imp_data_acc_2 br_acc_2;
[file_name_acc_2, pathname_acc_2] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_2=strcat(pathname_acc_2,file_name_acc_2);
imp_data_acc_2=file_name_acc_2(1:end-4);
file_path_acc_2=fullpathname_acc_2;
br_acc_2=1;
set(handles.txt_acc_2,'String',imp_data_acc_2);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_2.
function pb_clear_acc_2_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_2, 'string','Load acceleration 2');
global file_path_acc_2 br_acc_2;
file_path_acc_2=0;
br_acc_2=0;


% --- Executes on button press in pb_browse_disp_3.
function pb_browse_disp_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_3 pathname_disp_3 file_name_disp_3 imp_data_disp_3 br_disp_3;
[file_name_disp_3, pathname_disp_3] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_3=strcat(pathname_disp_3,file_name_disp_3);
imp_data_disp_3=file_name_disp_3(1:end-4);
file_path_disp_3=fullpathname_disp_3;
br_disp_3=1;
set(handles.txt_disp_3,'String',imp_data_disp_3);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_3.
function pb_clear_disp_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_3, 'string','Load displacement 3');
global file_path_disp_3 br_disp_3;
file_path_disp_3=0;
br_disp_3=0;


% --- Executes on button press in pb_browse_vel_3.
function pb_browse_vel_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_3 pathname_vel_3 file_name_vel_3 imp_data_vel_3 br_vel_3;
[file_name_vel_3, pathname_vel_3] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_3=strcat(pathname_vel_3,file_name_vel_3);
imp_data_vel_3=file_name_vel_3(1:end-4);
file_path_vel_3=fullpathname_vel_3;
br_vel_3=1;
set(handles.txt_vel_3,'String',imp_data_vel_3);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_3.
function pb_clear_vel_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_3, 'string','Load velocity 3');
global file_path_vel_3 br_vel_3;
file_path_vel_3=0;
br_vel_3=0;


% --- Executes on button press in pb_browse_acc_3.
function pb_browse_acc_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_3 pathname_acc_3 file_name_acc_3 imp_data_acc_3 br_acc_3;
[file_name_acc_3, pathname_acc_3] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_3=strcat(pathname_acc_3,file_name_acc_3);
imp_data_acc_3=file_name_acc_3(1:end-4);
file_path_acc_3=fullpathname_acc_3;
br_acc_3=1;
set(handles.txt_acc_3,'String',imp_data_acc_3);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_3.
function pb_clear_acc_3_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_3, 'string','Load acceleration 3');
global file_path_acc_3 br_acc_3;
file_path_acc_3=0;
br_acc_3=0;


% --- Executes on button press in pb_browse_disp_4.
function pb_browse_disp_4_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_4 pathname_disp_4 file_name_disp_4 imp_data_disp_4 br_disp_4;
[file_name_disp_4, pathname_disp_4] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_4=strcat(pathname_disp_4,file_name_disp_4);
imp_data_disp_4=file_name_disp_4(1:end-4);
file_path_disp_4=fullpathname_disp_4;
br_disp_4=1;
set(handles.txt_disp_4,'String',imp_data_disp_4);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_4.
function pb_clear_disp_4_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_4, 'string','Load displacement 4');
global file_path_disp_4 br_disp_4;
file_path_disp_4=0;
br_disp_4=0;


% --- Executes on button press in pb_browse_vel_4.
function pb_browse_vel_4_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_4 pathname_vel_4 file_name_vel_4 imp_data_vel_4 br_vel_4;
[file_name_vel_4, pathname_vel_4] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_4=strcat(pathname_vel_4,file_name_vel_4);
imp_data_vel_4=file_name_vel_4(1:end-4);
file_path_vel_4=fullpathname_vel_4;
br_vel_4=1;
set(handles.txt_vel_4,'String',imp_data_vel_4);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_4.
function pb_clear_vel_4_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_4, 'string','Load velocity 4');
global file_path_vel_4 br_vel_4;
file_path_vel_4=0;
br_vel_4=0;


% --- Executes on button press in pb_browse_acc_4.
function pb_browse_acc_4_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_4 pathname_acc_4 file_name_acc_4 imp_data_acc_4 br_acc_4;
[file_name_acc_4, pathname_acc_4] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_4=strcat(pathname_acc_4,file_name_acc_4);
imp_data_acc_4=file_name_acc_4(1:end-4);
file_path_acc_4=fullpathname_acc_4;
br_acc_4=1;
set(handles.txt_acc_4,'String',imp_data_acc_4);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_4.
function pb_clear_acc_4_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_4, 'string','Load acceleration 4');
global file_path_acc_4 br_acc_4;
file_path_acc_4=0;
br_acc_4=0;


% --- Executes on button press in pb_browse_disp_5.
function pb_browse_disp_5_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_5 pathname_disp_5 file_name_disp_5 imp_data_disp_5 br_disp_5;
[file_name_disp_5, pathname_disp_5] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_5=strcat(pathname_disp_5,file_name_disp_5);
imp_data_disp_5=file_name_disp_5(1:end-4);
file_path_disp_5=fullpathname_disp_5;
br_disp_5=1;
set(handles.txt_disp_5,'String',imp_data_disp_5);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_5.
function pb_clear_disp_5_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_5, 'string','Load displacement 5');
global file_path_disp_5 br_disp_5;
file_path_disp_5=0;
br_disp_5=0;


% --- Executes on button press in pb_browse_vel_5.
function pb_browse_vel_5_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_5 pathname_vel_5 file_name_vel_5 imp_data_vel_5 br_vel_5;
[file_name_vel_5, pathname_vel_5] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_5=strcat(pathname_vel_5,file_name_vel_5);
imp_data_vel_5=file_name_vel_5(1:end-4);
file_path_vel_5=fullpathname_vel_5;
br_vel_5=1;
set(handles.txt_vel_5,'String',imp_data_vel_5);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_5.
function pb_clear_vel_5_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_5, 'string','Load velocity 5');
global file_path_vel_5 br_vel_5;
file_path_vel_5=0;
br_vel_5=0;


% --- Executes on button press in pb_browse_acc_5.
function pb_browse_acc_5_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_5 pathname_acc_5 file_name_acc_5 imp_data_acc_5 br_acc_5;
[file_name_acc_5, pathname_acc_5] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_5=strcat(pathname_acc_5,file_name_acc_5);
imp_data_acc_5=file_name_acc_5(1:end-4);
file_path_acc_5=fullpathname_acc_5;
br_acc_5=1;
set(handles.txt_acc_5,'String',imp_data_acc_5);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_5.
function pb_clear_acc_5_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_5, 'string','Load acceleration 5');
global file_path_acc_5 br_acc_5;
file_path_acc_5=0;
br_acc_5=0;


% --- Executes on button press in pb_browse_disp_6.
function pb_browse_disp_6_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_6 pathname_disp_6 file_name_disp_6 imp_data_disp_6 br_disp_6;
[file_name_disp_6, pathname_disp_6] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_6=strcat(pathname_disp_6,file_name_disp_6);
imp_data_disp_6=file_name_disp_6(1:end-4);
file_path_disp_6=fullpathname_disp_6;
br_disp_6=1;
set(handles.txt_disp_6,'String',imp_data_disp_6);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_6.
function pb_clear_disp_6_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_6, 'string','Load displacement 6');
global file_path_disp_6 br_disp_6;
file_path_disp_6=0;
br_disp_6=0;


% --- Executes on button press in pb_browse_vel_6.
function pb_browse_vel_6_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_6 pathname_vel_6 file_name_vel_6 imp_data_vel_6 br_vel_6;
[file_name_vel_6, pathname_vel_6] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_6=strcat(pathname_vel_6,file_name_vel_6);
imp_data_vel_6=file_name_vel_6(1:end-4);
file_path_vel_6=fullpathname_vel_6;
br_vel_6=1;
set(handles.txt_vel_6,'String',imp_data_vel_6);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_6.
function pb_clear_vel_6_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_6, 'string','Load velocity 6');
global file_path_vel_6 br_vel_6;
file_path_vel_6=0;
br_vel_6=0;


% --- Executes on button press in pb_browse_acc_6.
function pb_browse_acc_6_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_6 pathname_acc_6 file_name_acc_6 imp_data_acc_6 br_acc_6;
[file_name_acc_6, pathname_acc_6] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_6=strcat(pathname_acc_6,file_name_acc_6);
imp_data_acc_6=file_name_acc_6(1:end-4);
file_path_acc_6=fullpathname_acc_6;
br_acc_6=1;
set(handles.txt_acc_6,'String',imp_data_acc_6);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_6.
function pb_clear_acc_6_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_6, 'string','Load acceleration 6');
global file_path_acc_6 br_acc_6;
file_path_acc_6=0;
br_acc_6=0;


% --- Executes on button press in pb_browse_disp_7.
function pb_browse_disp_7_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_disp_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_disp_7 pathname_disp_7 file_name_disp_7 imp_data_disp_7 br_disp_7;
[file_name_disp_7, pathname_disp_7] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select displacement data file');
fullpathname_disp_7=strcat(pathname_disp_7,file_name_disp_7);
imp_data_disp_7=file_name_disp_7(1:end-4);
file_path_disp_7=fullpathname_disp_7;
br_disp_7=1;
set(handles.txt_disp_7,'String',imp_data_disp_7);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_disp_7.
function pb_clear_disp_7_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_disp_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_disp_7, 'string','Load displacement 7');
global file_path_disp_7 br_disp_7;
file_path_disp_7=0;
br_disp_7=0;


% --- Executes on button press in pb_browse_vel_7.
function pb_browse_vel_7_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_vel_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_vel_7 pathname_vel_7 file_name_vel_7 imp_data_vel_7 br_vel_7;
[file_name_vel_7, pathname_vel_7] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select velocity data file');
fullpathname_vel_7=strcat(pathname_vel_7,file_name_vel_7);
imp_data_vel_7=file_name_vel_7(1:end-4);
file_path_vel_7=fullpathname_vel_7;
br_vel_7=1;
set(handles.txt_vel_7,'String',imp_data_vel_7);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_vel_7.
function pb_clear_vel_7_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_vel_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_vel_7, 'string','Load velocity 7');
global file_path_vel_7 br_vel_7;
file_path_vel_7=0;
br_vel_7=0;


% --- Executes on button press in pb_browse_acc_7.
function pb_browse_acc_7_Callback(hObject, eventdata, handles)
% hObject    handle to pb_browse_acc_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global file_path_acc_7 pathname_acc_7 file_name_acc_7 imp_data_acc_7 br_acc_7;
[file_name_acc_7, pathname_acc_7] = uigetfile({'*.txt';'*.raw';'*.cor';'*.*'},'Select acceleration data file');
fullpathname_acc_7=strcat(pathname_acc_7,file_name_acc_7);
imp_data_acc_7=file_name_acc_7(1:end-4);
file_path_acc_7=fullpathname_acc_7;
br_acc_7=1;
set(handles.txt_acc_7,'String',imp_data_acc_7);
guidata(hObject, handles);


% --- Executes on button press in pb_clear_acc_7.
function pb_clear_acc_7_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_acc_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_acc_7, 'string','Load acceleration 7');
global file_path_acc_7 br_acc_7;
file_path_acc_7=0;
br_acc_7=0;




%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
% clear


% --- Executes on button press in pb_clear_all.
function pb_clear_all_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txt_dt, 'string','0.01');

set(handles.txt_disp_0, 'string','Load displacement 1');
global file_path_disp_0 br_disp_0;
file_path_disp_0=0;
br_disp_0=0;

set(handles.txt_disp_1, 'string','Load displacement 1');
global file_path_disp_1 br_disp_1;
file_path_disp_1=0;
br_disp_1=0;

set(handles.txt_disp_2, 'string','Load displacement 2');
global file_path_disp_2 br_disp_2;
file_path_disp_2=0;
br_disp_2=0;

set(handles.txt_disp_3, 'string','Load displacement 3');
global file_path_disp_3 br_disp_3;
file_path_disp_3=0;
br_disp_3=0;

set(handles.txt_disp_4, 'string','Load displacement 4');
global file_path_disp_4 br_disp_4;
file_path_disp_4=0;
br_disp_4=0;

set(handles.txt_disp_5, 'string','Load displacement 5');
global file_path_disp_5 br_disp_5;
file_path_disp_5=0;
br_disp_5=0;

set(handles.txt_disp_6, 'string','Load displacement 6');
global file_path_disp_6 br_disp_6;
file_path_disp_6=0;
br_disp_6=0;

set(handles.txt_disp_7, 'string','Load displacement 7');
global file_path_disp_7 br_disp_7;
file_path_disp_7=0;
br_disp_7=0;


set(handles.txt_vel_0, 'string','Load velocity 1');
global file_path_vel_0 br_vel_0;
file_path_vel_0=0;
br_vel_0=0;

set(handles.txt_vel_1, 'string','Load velocity 1');
global file_path_vel_1 br_vel_1;
file_path_vel_1=0;
br_vel_1=0;

set(handles.txt_vel_2, 'string','Load velocity 2');
global file_path_vel_2 br_vel_2;
file_path_vel_2=0;
br_vel_2=0;

set(handles.txt_vel_3, 'string','Load velocity 3');
global file_path_vel_3 br_vel_3;
file_path_vel_3=0;
br_vel_3=0;

set(handles.txt_vel_4, 'string','Load velocity 4');
global file_path_vel_4 br_vel_4;
file_path_vel_4=0;
br_vel_4=0;

set(handles.txt_vel_5, 'string','Load velocity 5');
global file_path_vel_5 br_vel_5;
file_path_vel_5=0;
br_vel_5=0;

set(handles.txt_vel_6, 'string','Load velocity 6');
global file_path_vel_6 br_vel_6;
file_path_vel_6=0;
br_vel_6=0;

set(handles.txt_vel_7, 'string','Load velocity 7');
global file_path_vel_7 br_vel_7;
file_path_vel_7=0;
br_vel_7=0;


set(handles.txt_acc_0, 'string','Load acceleration 1');
global file_path_acc_0 br_acc_0;
file_path_acc_0=0;
br_acc_0=0;


set(handles.txt_acc_1, 'string','Load acceleration 1');
global file_path_acc_1 br_acc_1;
file_path_acc_1=0;
br_acc_1=0;


set(handles.txt_acc_2, 'string','Load acceleration 2');
global file_path_acc_2 br_acc_2;
file_path_acc_2=0;
br_acc_2=0;


set(handles.txt_acc_3, 'string','Load acceleration 3');
global file_path_acc_3 br_acc_3;
file_path_acc_3=0;
br_acc_3=0;


set(handles.txt_acc_4, 'string','Load acceleration 4');
global file_path_acc_4 br_acc_4;
file_path_acc_4=0;
br_acc_4=0;

set(handles.txt_acc_5, 'string','Load acceleration 5');
global file_path_acc_5 br_acc_5;
file_path_acc_5=0;
br_acc_5=0;


set(handles.txt_acc_6, 'string','Load acceleration 6');
global file_path_acc_6 br_acc_6;
file_path_acc_6=0;
br_acc_6=0;


set(handles.txt_acc_7, 'string','Load acceleration 7');
global file_path_acc_7 br_acc_7;
file_path_acc_7=0;
br_acc_7=0;

global file_path;
file_path=0;
guidata(hObject, handles);





%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
% exit

% --- Executes on button press in pb_exit.
function pb_exit_Callback(hObject, eventdata, handles)
% hObject    handle to pb_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;







%-------------------------------------------------------------------------
%-------------------------------------------------------------------------
% OK

% --- Executes on button press in pb_ok.
function pb_ok_Callback(hObject, eventdata, handles)
% hObject    handle to pb_ok (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%gets the first line value
global fline;
str=get(handles.txt_fline, 'string');
fline= str2double(str);
%gets the last line value
global lline;
str=get(handles.txt_lline, 'string');
lline= str2double(str);
%gets the time interval value
global input_dt;
str=get(handles.txt_dt, 'string');
%gets the file format
input_dt= str2double(str);
global fformat;
switch get(get(handles.uipanel5,'SelectedObject'),'Tag')
      case 'rb_01',  fformat=1;  %defines the file format 1- sigle acc per line, 2- time and acc per line and 3 - multiple acc per line
      case 'rb_02',  fformat=2;
      case 'rb_03',  fformat=3;
end
%gets the acc units
global accformat;
switch get(get(handles.uipanel6,'SelectedObject'),'Tag')
      case 'radiobutton4',  accformat=1;  %defines the acc units 1- g, 2- cm/s^2 and 3 - mm/s^2
      case 'radiobutton16', accformat=2;
      case 'radiobutton5',  accformat=3;
      case 'radiobutton6',  accformat=4;
end

global acc_out;
switch get(get(handles.uipanel8,'SelectedObject'),'Tag')
      case 'radiobutton7',  acc_out=1;  %defines the acc output units 1- g  ,2- m/s^2, 3- cm/s^2 and 4 - mm/s^2
      case 'radiobutton17',	acc_out=2;
      case 'radiobutton8',	acc_out=3;
      case 'radiobutton9',  acc_out=4;
end

global vel_out;
switch get(get(handles.uipanel9,'SelectedObject'),'Tag')
      case 'radiobutton12',  vel_out=1;  %defines the velocity output units 1- m/s, 2- cm/s and 3 - mm/s
      case 'radiobutton10',  vel_out=2;
      case 'radiobutton11',  vel_out=3;
end

global disp_out;
switch get(get(handles.uipanel10,'SelectedObject'),'Tag')
      case 'radiobutton15',  disp_out=1;  %defines the displacement output units 1- m, 2- cm and 3 - mm
      case 'radiobutton13',  disp_out=2;
      case 'radiobutton14',  disp_out=3;
end


%gets the number of records in set
global set_content;
switch get(get(handles.uipanel11,'SelectedObject'),'Tag')
      case 'rb_single_set',	set_content=1;  %single record
      case 'rb_seven_set',	set_content=7;  %7 record set
end

% global  file_path fline lline input_dt fformat accformat acc_out vel_out disp_out
%file_path=''; fline=0; lline=0; input_dt=0; fformat=0; accformat=0;
%acc_out=0; vel_out=0; disp_out=0;
close;
wait_gui=time_series;
waitfor(wait_gui);
