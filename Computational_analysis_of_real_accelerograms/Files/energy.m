function varargout = energy(varargin)
% ENERGY MATLAB code for energy.fig
%      ENERGY, by itself, creates a new ENERGY or raises the existing
%      singleton*.
%
%      H = ENERGY returns the handle to a new ENERGY or the handle to
%      the existing singleton*.
%
%      ENERGY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENERGY.M with the given input arguments.
%
%      ENERGY('Property','Value',...) creates a new ENERGY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before energy_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to energy_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help energy

% Last Modified by GUIDE v2.5 30-Apr-2017 04:25:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @energy_OpeningFcn, ...
                   'gui_OutputFcn',  @energy_OutputFcn, ...
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


% --- Executes just before energy is made visible.
function energy_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to energy (see VARARGIN)

% Choose default command line output for energy
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes energy wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = energy_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

global set_content
global  file_name_acc_0 ;
global  file_name_acc_1 ;
global  file_name_acc_2 ;
global  file_name_acc_3 ;
global  file_name_acc_4 ;
global  file_name_acc_5 ;
global  file_name_acc_6 ;
global  file_name_acc_7 ;


if set_content==1
    set(handles.uipanel2,'Visible','off');  
    set(handles.rb_rec_0,'String',file_name_acc_0(1:end-4));
    
else if set_content==7
        
    set(handles.uipanel3,'Visible','off');
    
    set(handles.rb_rec_1,'String',file_name_acc_1(1:end-8))
    set(handles.rb_rec_2,'String',file_name_acc_2(1:end-8))
    set(handles.rb_rec_3,'String',file_name_acc_3(1:end-8))
    set(handles.rb_rec_4,'String',file_name_acc_4(1:end-8))
    set(handles.rb_rec_5,'String',file_name_acc_5(1:end-8))
    set(handles.rb_rec_6,'String',file_name_acc_6(1:end-8))
    set(handles.rb_rec_7,'String',file_name_acc_7(1:end-8))
    end
     
end





% % % global acc_cm input_dt T_rec Ea EI_H SPV t_Ea_max indx_Ea_max Ea_max
% % % 
% % % %--------------------------------------------------------------------------
% % % %Calculating Energy of acceleration
% % % 
% % % 
% % % Ea = cumtrapz(acc_cm.^2)*input_dt;  %Energy of acceleration defined by Zare
% % % 
% % % 
% % % [Ea_max,indx_Ea_max] = max(abs(Ea)); %peak ground acceleration with index [cm/s^2]
% % % t_Ea_max=T_rec(indx_Ea_max);              %the time in which PGA is located [s]
% % % 
% % % 
% % % 
% % % 
% % % 
% % % %--------------------------------------------------------------------------
% % % %Calculating the Housner(1956) input energy
% % % 
% % % 
% % % EI_H=0.5*SPV.^2;       %Housner(1956) input energy





% --- Executes on button press in pb_plot.
function pb_plot_Callback(hObject, eventdata, handles)
% hObject    handle to pb_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global E_type  Ea  indx_Ea_max Ea_max Tn EI_H SPV EI EI_abs acc_cm input_dt t_Ea_max

global set_content

global  T_rec T_rec_0 T_rec_1 T_rec_2 T_rec_3 T_rec_4 T_rec_5 T_rec_6 T_rec_7

global acc_cm_0 SPV_0  EI_abs_0  EI_0

global select_rec %selected record

global  file_name_acc_1 ;
global  file_name_acc_2 ;
global  file_name_acc_3 ;
global  file_name_acc_4 ;
global  file_name_acc_5 ;
global  file_name_acc_6 ;
global  file_name_acc_7 ; 






global rec_name_1 rec_name_2 rec_name_3 rec_name_4 rec_name_5 rec_name_6 rec_name_7
 


        rec_name_1=(file_name_acc_1(1:end-8));
        rec_name_2=(file_name_acc_2(1:end-8));
        rec_name_3=(file_name_acc_3(1:end-8));
        rec_name_4=(file_name_acc_4(1:end-8));
        rec_name_5=(file_name_acc_5(1:end-8));
        rec_name_6=(file_name_acc_6(1:end-8));
        rec_name_7=(file_name_acc_7(1:end-8));
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record
if set_content==1
    

    
    acc_cm=acc_cm_0;
    SPV=SPV_0;
    EI_abs=EI_abs_0;
    EI=EI_0;
    T_rec=T_rec_0;
    

    
end


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set

global acc_cm_1 SPV_1  EI_abs_1  EI_1
global acc_cm_2 SPV_2  EI_abs_2  EI_2
global acc_cm_3 SPV_3  EI_abs_3  EI_3
global acc_cm_4 SPV_4  EI_abs_4  EI_4
global acc_cm_5 SPV_5  EI_abs_5  EI_5
global acc_cm_6 SPV_6  EI_abs_6  EI_6
global acc_cm_7 SPV_7  EI_abs_7  EI_7

global EI_abs_max EI_abs_max_T



if set_content==7

switch get(get(handles.uipanel2,'SelectedObject'),'Tag')
      case 'rb_rec_1',  select_rec=1;
      case 'rb_rec_2',  select_rec=2;
      case 'rb_rec_3',  select_rec=3;    
      case 'rb_rec_4',  select_rec=4;    
      case 'rb_rec_5',  select_rec=5;    
      case 'rb_rec_6',  select_rec=6;    
      case 'rb_rec_7',  select_rec=7;
      case 'rb_rec_13', select_rec=77;
end


if select_rec==1
    acc_cm=acc_cm_1;
    SPV=SPV_1;
    EI_abs=EI_abs_1;
    EI=EI_1;
    T_rec=T_rec_1;

    
else if select_rec==2
        acc_cm=acc_cm_2;
        SPV=SPV_2;
        EI_abs=EI_abs_2;
        EI=EI_2;
        T_rec=T_rec_2;
    else if select_rec==3
        acc_cm=acc_cm_3;
        SPV=SPV_3;
        EI_abs=EI_abs_3;
        EI=EI_3;
        T_rec=T_rec_3;
         else if select_rec==4
            acc_cm=acc_cm_4;
            SPV=SPV_4;
            EI_abs=EI_abs_4;
            EI=EI_4;
            T_rec=T_rec_4;
                else if select_rec==5
                    acc_cm=acc_cm_5;
                    SPV=SPV_5;
                    EI_abs=EI_abs_5;
                    EI=EI_5;
                    T_rec=T_rec_5;
                        else if select_rec==6
                            acc_cm=acc_cm_6;
                            SPV=SPV_6;
                            EI_abs=EI_abs_6;
                            EI=EI_6;
                            T_rec=T_rec_6;
                                else if select_rec==7
                                    acc_cm=acc_cm_7;
                                    SPV=SPV_7;
                                    EI_abs=EI_abs_7;
                                    EI=EI_7;
                                    T_rec=T_rec_7;
                                    end
                                    
                            end
                    end
             end
        end
    end
end
end

%--------------------------------------------------------------------------
%Calculating Energy of acceleration

global Ea1 Ea2 Ea3 Ea4 Ea5 Ea6 Ea7
global Ea_max1 Ea_max2 Ea_max3 Ea_max4 Ea_max5 Ea_max6 Ea_max7
global indx_Ea_max1 indx_Ea_max2 indx_Ea_max3 indx_Ea_max4 indx_Ea_max5 indx_Ea_max6 indx_Ea_max7
global t_Ea_max1 t_Ea_max2 t_Ea_max3 t_Ea_max4 t_Ea_max5 t_Ea_max6 t_Ea_max7


Ea = cumtrapz(acc_cm.^2)*input_dt;      %Energy of acceleration defined by Zare

[Ea_max,indx_Ea_max] = max(abs(Ea));    %max energy of acceleration with index
t_Ea_max=T_rec(indx_Ea_max);            %the time in which max energy of acceleration is located [s]


if select_rec==77

Ea1 = cumtrapz(acc_cm_1.^2)*input_dt;      %Energy of acceleration defined by Zare
Ea2 = cumtrapz(acc_cm_2.^2)*input_dt;      %Energy of acceleration defined by Zare
Ea3 = cumtrapz(acc_cm_3.^2)*input_dt;      %Energy of acceleration defined by Zare
Ea4 = cumtrapz(acc_cm_4.^2)*input_dt;      %Energy of acceleration defined by Zare
Ea5 = cumtrapz(acc_cm_5.^2)*input_dt;      %Energy of acceleration defined by Zare
Ea6 = cumtrapz(acc_cm_6.^2)*input_dt;      %Energy of acceleration defined by Zare
Ea7 = cumtrapz(acc_cm_7.^2)*input_dt;      %Energy of acceleration defined by Zare

[Ea_max1,indx_Ea_max1] = max(abs(Ea1));    %max energy of acceleration with index
t_Ea_max1=T_rec_1(indx_Ea_max1);            %the time in which max energy of acceleration is located [s]

[Ea_max2,indx_Ea_max2] = max(abs(Ea2));    %max energy of acceleration with index
t_Ea_max2=T_rec_2(indx_Ea_max2);            %the time in which max energy of acceleration is located [s]

[Ea_max3,indx_Ea_max3] = max(abs(Ea3));    %max energy of acceleration with index
t_Ea_max3=T_rec_3(indx_Ea_max3);            %the time in which max energy of acceleration is located [s]

[Ea_max4,indx_Ea_max4] = max(abs(Ea4));    %max energy of acceleration with index
t_Ea_max4=T_rec_4(indx_Ea_max4);            %the time in which max energy of acceleration is located [s]

[Ea_max5,indx_Ea_max5] = max(abs(Ea5));    %max energy of acceleration with index
t_Ea_max5=T_rec_5(indx_Ea_max5);            %the time in which max energy of acceleration is located [s]

[Ea_max6,indx_Ea_max6] = max(abs(Ea6));    %max energy of acceleration with index
t_Ea_max6=T_rec_6(indx_Ea_max6);            %the time in which max energy of acceleration is located [s]

[Ea_max7,indx_Ea_max7] = max(abs(Ea7));    %max energy of acceleration with index
t_Ea_max7=T_rec_7(indx_Ea_max7);            %the time in which max energy of acceleration is located [s]

end


%--------------------------------------------------------------------------
%Calculating the Housner(1956) input energy

global EI_H1 EI_H2 EI_H3 EI_H4 EI_H5 EI_H6 EI_H7 EI_mean7
global EI_H_max EI_H_max_T 


EI_H=0.5*SPV.^2;       %Housner(1956) input energy

Tn=0:0.01:4;
[EI_H_max,indx_EI_H_max]=max(abs(EI_H));
EI_H_max_T=Tn(indx_EI_H_max);

if select_rec==77
    
EI_H1=0.5*SPV_1.^2;       %Housner(1956) input energy
EI_H2=0.5*SPV_2.^2;       %Housner(1956) input energy
EI_H3=0.5*SPV_3.^2;       %Housner(1956) input energy
EI_H4=0.5*SPV_4.^2;       %Housner(1956) input energy
EI_H5=0.5*SPV_5.^2;       %Housner(1956) input energy
EI_H6=0.5*SPV_6.^2;       %Housner(1956) input energy
EI_H7=0.5*SPV_7.^2;       %Housner(1956) input energy
EI_mean7=(EI_H1+EI_H2+EI_H3+EI_H4+EI_H5+EI_H6+EI_H7)/7;   %Mean Housner(1956) input energy   

end





%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%PLOT PARAMETERS AND GRAPHS------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------


switch get(get(handles.uipanel1,'SelectedObject'),'Tag')
      case 'radiobutton1',  E_type=1;  
      case 'radiobutton2',  E_type=2;
      case 'radiobutton3',  E_type=3;
      case 'radiobutton4',  E_type=4;
end



if E_type==1
 
 
    if select_rec==77
        axes(handles.axes1);
        cla;
       
        x_label='Time (s)';
        y_label='Ea - Energy of acceleration (Zare,2000)';    

    
        axes(handles.axes1);
        plot(T_rec_1, Ea1,'r', t_Ea_max1, Ea_max1,'r*',T_rec_2, Ea2,'c', t_Ea_max2, Ea_max2,'c*',T_rec_3, Ea3,'m', t_Ea_max3, Ea_max3,'m*',T_rec_4, Ea4,'g', t_Ea_max4, Ea_max4,'g*',T_rec_5, Ea5, 'b',t_Ea_max5, Ea_max5,'b*',T_rec_6, Ea6,'k', t_Ea_max6, Ea_max6,'k*',T_rec_7, Ea7, 'y',t_Ea_max7, Ea_max7,'y*');
        grid ;
        xlabel(x_label);
        ylabel(y_label) ;
        
        
        
        lab2_1=strcat('Max Ea','=', num2str(Ea_max1),'cm^2/s^3');
        lab2_2=strcat('Max Ea','=', num2str(Ea_max2),'cm^2/s^3');
        lab2_3=strcat('Max Ea','=', num2str(Ea_max3),'cm^2/s^3');
        lab2_4=strcat('Max Ea','=', num2str(Ea_max4),'cm^2/s^3');
        lab2_5=strcat('Max Ea','=', num2str(Ea_max5),'cm^2/s^3');
        lab2_6=strcat('Max Ea','=', num2str(Ea_max6),'cm^2/s^3');
        lab2_7=strcat('Max Ea','=', num2str(Ea_max7),'cm^2/s^3');
        
        
        
        legend(rec_name_1,lab2_1, rec_name_2,lab2_2,rec_name_3,lab2_3,rec_name_4,lab2_4,rec_name_5,lab2_5,rec_name_6,lab2_6,rec_name_7,lab2_7,'Location','east');    
    
    else
    
    axes(handles.axes1);
    cla;
    
    
    plot_x1=T_rec;
    plot_y1=Ea;
    plot_x2=T_rec(indx_Ea_max);
    plot_y2=Ea_max;
    x_label='Time (s)';
    y_label='Ea - Energy of acceleration (Zare,2000)';
    leg_1='Ea';
    leg_2='max Ea';
    strng3 = num2str(Ea_max);
    strng2=strjoin({leg_2,'=', strng3,'cm^2/s^3'});
   
    
axes(handles.axes1);
plot(plot_x1, plot_y1,'b', plot_x2, plot_y2, 'r*');
grid ;
xlabel(x_label);
ylabel(y_label) ;
legend(leg_1, strng2,'Location','east');
% strng = num2str(Ea_max);
% strng1=strjoin({' ','Ea=', strng,'cm^2/s^3','\rightarrow'});
% text(T_rec(indx_Ea_max),Ea_max,  strng1,...
%     'HorizontalAlignment','right');   
    end

elseif E_type==2
    
    if select_rec==77
       
        axes(handles.axes1);
        cla;
        
        Tn=0:0.01:4;
        x_label='Period (s)';
        y_label='Input energy - Ei (Housner 1956)';
        axes(handles.axes1);
        grid ;
        hold all;
%         plot(Tn,EI_H1, Tn,EI_H2, Tn,EI_H3, Tn,EI_H4, Tn,EI_H5, Tn,EI_H6, Tn,EI_H7, Tn,EI_mean7);
        plot(Tn,EI_H1, Tn,EI_H2, Tn,EI_H3, Tn,EI_H4, Tn,EI_H5, Tn,EI_H6, Tn,EI_H7);
         plot(Tn,EI_mean7,'b','LineWidth',2);
                
        legend(rec_name_1,rec_name_2,rec_name_3,rec_name_4,rec_name_5,rec_name_6,rec_name_7,'Mean','Location','east');    
        xlabel(x_label);
        ylabel(y_label);
        hold off;
    else
   
        axes(handles.axes1);
        cla;
        
    Tn=0:0.01:4;
    plot_x1=Tn;
    plot_y1=EI_H;
    x_label='Period (s)';
    y_label='Input energy - Ei (Housner 1956)';
    axes(handles.axes1);
plot(plot_x1, plot_y1,'b');
grid ;
xlabel(x_label);
ylabel(y_label) ;
   
    [EI_H_max,indx_EI_H_max] = max(abs(EI_H));    %max energy with index
    EI_H_max_T=Tn(indx_EI_H_max); 
    
    end

elseif E_type==3
   
    if select_rec==77
       axes(handles.axes1);
        cla; 
       
        Tn=0:0.01:4;
        
        EI_abs_mean7=(EI_abs_1+EI_abs_2+EI_abs_3+EI_abs_4+EI_abs_5+EI_abs_6+EI_abs_7)/7;
       
        x_label='Period (s)';
        y_label='Absolute input energy';
        axes(handles.axes1);
        
        hold all;
       plot(Tn,EI_abs_1', Tn,EI_abs_2', Tn,EI_abs_3', Tn,EI_abs_4', Tn,EI_abs_5', Tn,EI_abs_6', Tn,EI_abs_7');
         plot(Tn,EI_abs_mean7','b','LineWidth',2);
                
        legend(rec_name_1,rec_name_2,rec_name_3,rec_name_4,rec_name_5,rec_name_6,rec_name_7,'Mean','Location','east');    
        xlabel(x_label);
        ylabel(y_label);
        hold off;
        
        
        
        
        
    else
    
    
    axes(handles.axes1);
        cla;
    Tn=0:0.01:4;
    plot_x1=Tn;
    plot_y1=abs(EI_abs');
    x_label='Period (s)';
    y_label='Absolute input energy';
    axes(handles.axes1);
plot(plot_x1, plot_y1,'b');
grid ;
xlabel(x_label);
ylabel(y_label) ;
    
    
    [EI_abs_max,indx_EI_abs_max] = max(abs(EI_abs));    %max energy with index
    EI_abs_max_T=Tn(indx_EI_abs_max);     
    
    
    end


elseif E_type==4
    
     if select_rec==77
       axes(handles.axes1);
        cla; 
       
        Tn=0:0.01:4;
        
        EI_mean7=abs(EI_1+EI_2+EI_3+EI_4+EI_5+EI_6+EI_7)/7;
       
        x_label='Period (s)';
        y_label='Absolute input energy';
        axes(handles.axes1);
        
        hold all;
        plot(Tn,abs(EI_1'), Tn,abs(EI_2'), Tn,abs(EI_3'), Tn,abs(EI_4'), Tn,abs(EI_5'), Tn,abs(EI_6'), Tn,abs(EI_7'));
         plot(Tn,EI_mean7','b','LineWidth',2);
                
        legend(rec_name_1,rec_name_2,rec_name_3,rec_name_4,rec_name_5,rec_name_6,rec_name_7,'Mean','Location','east');    
        xlabel(x_label);
        ylabel(y_label);
        hold off;
        
    else
    
    
    axes(handles.axes1);
        cla;
   
    Tn=0:0.01:4;
    plot_x1=Tn;
    plot_y1=abs(EI');
    x_label='Period (s)';
    y_label='Relative input energy';
    axes(handles.axes1);
plot(plot_x1, plot_y1,'b');
grid ;
xlabel(x_label);
ylabel(y_label) ;
     end


end


% --- Executes on button press in pb_clear.
function pb_clear_Callback(hObject, eventdata, handles)
% hObject    handle to pb_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
cla;
xlabel('');
ylabel('') ;
legend('off');

% --- Executes on button press in pb_exit.
function pb_exit_Callback(hObject, eventdata, handles)
% hObject    handle to pb_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;


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
R_spectra;

% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
gm_param;


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
Fourier;
