function varargout = gm_param(varargin)
% GM_PARAM MATLAB code for gm_param.fig
%      GM_PARAM, by itself, creates a new GM_PARAM or raises the existing
%      singleton*.
%
%      H = GM_PARAM returns the handle to a new GM_PARAM or the handle to
%      the existing singleton*.
%
%      GM_PARAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GM_PARAM.M with the given input arguments.
%
%      GM_PARAM('Property','Value',...) creates a new GM_PARAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gm_param_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gm_param_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gm_param

% Last Modified by GUIDE v2.5 30-Apr-2017 03:26:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gm_param_OpeningFcn, ...
                   'gui_OutputFcn',  @gm_param_OutputFcn, ...
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


% --- Executes just before gm_param is made visible.
function gm_param_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gm_param (see VARARGIN)

% Choose default command line output for gm_param
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gm_param wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gm_param_OutputFcn(hObject, eventdata, handles) 
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
    set(handles.uipanel8,'Visible','off');  
    set(handles.rb_rec_0,'String',file_name_acc_0(1:end-8));
    
else if set_content==7
        
    set(handles.uipanel9,'Visible','off');
    
    set(handles.rb_rec_1,'String',file_name_acc_1(1:end-8))
    set(handles.rb_rec_2,'String',file_name_acc_2(1:end-8))
    set(handles.rb_rec_3,'String',file_name_acc_3(1:end-8))
    set(handles.rb_rec_4,'String',file_name_acc_4(1:end-8))
    set(handles.rb_rec_5,'String',file_name_acc_5(1:end-8))
    set(handles.rb_rec_6,'String',file_name_acc_6(1:end-8))
    set(handles.rb_rec_7,'String',file_name_acc_7(1:end-8))
    end
     
end





% --- Executes on button press in pb_calculate.
function pb_calculate_Callback(hObject, eventdata, handles)
% hObject    handle to pb_calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global unit_coeff_acc unit_label_acc unit_coeff_vel unit_label_vel unit_coeff_disp unit_label_disp xi_in

global Ia pga acc_cm
global set_content input_dt  dTn

global acc_cm_0 vel_cm_0 disp_cm_0  T_rec_end_0 SPA_0 SPV_0 SV_0 T_rec_0
global pga_0 pgv_0 pgd_0 t_pga_0 t_pgv_0 t_pgd_0 ratio_pga_pgv_0 ratio_pgv_pga_0 ratio_pgd_pgv_0 Ia_int_0 Ia_tot_0 Ia_val_0 Ia_0 arms_0 vrms_0 drms_0 Ic_0 SED_0 CAV_0 ASI_0 VSI_0 IH_0
global acc_cm_1 vel_cm_1 disp_cm_1  T_rec_end_1  SPA_1 SPV_1 SV_1 T_rec_1
global pga_1 pgv_1 pgd_1 t_pga_1 t_pgv_1 t_pgd_1 ratio_pga_pgv_1 ratio_pgv_pga_1 ratio_pgd_pgv_1 Ia_int_1 Ia_tot_1 Ia_val_1 Ia_1 arms_1 vrms_1 drms_1 Ic_1 SED_1 CAV_1 ASI_1 VSI_1 IH_1
global acc_cm_2 vel_cm_2 disp_cm_2  T_rec_end_2  SPA_2 SPV_2 SV_2 T_rec_2
global pga_2 pgv_2 pgd_2 t_pga_2 t_pgv_2 t_pgd_2 ratio_pga_pgv_2 ratio_pgv_pga_2 ratio_pgd_pgv_2 Ia_int_2 Ia_tot_2 Ia_val_2 Ia_2 arms_2 vrms_2 drms_2 Ic_2 SED_2 CAV_2 ASI_2 VSI_2 IH_2
global acc_cm_3 vel_cm_3 disp_cm_3  T_rec_end_3  SPA_3 SPV_3 SV_3 T_rec_3
global pga_3 pgv_3 pgd_3 t_pga_3 t_pgv_3 t_pgd_3 ratio_pga_pgv_3 ratio_pgv_pga_3 ratio_pgd_pgv_3 Ia_int_3 Ia_tot_3 Ia_val_3 Ia_3 arms_3 vrms_3 drms_3 Ic_3 SED_3 CAV_3 ASI_3 VSI_3 IH_3
global acc_cm_4 vel_cm_4 disp_cm_4  T_rec_end_4  SPA_4 SPV_4 SV_4 T_rec_4
global pga_4 pgv_4 pgd_4 t_pga_4 t_pgv_4 t_pgd_4 ratio_pga_pgv_4 ratio_pgv_pga_4 ratio_pgd_pgv_4 Ia_int_4 Ia_tot_4 Ia_val_4 Ia_4 arms_4 vrms_4 drms_4 Ic_4 SED_4 CAV_4 ASI_4 VSI_4 IH_4
global acc_cm_5 vel_cm_5 disp_cm_5  T_rec_end_5  SPA_5 SPV_5 SV_5 T_rec_5
global pga_5 pgv_5 pgd_5 t_pga_5 t_pgv_5 t_pgd_5 ratio_pga_pgv_5 ratio_pgv_pga_5 ratio_pgd_pgv_5 Ia_int_5 Ia_tot_5 Ia_val_5 Ia_5 arms_5 vrms_5 drms_5 Ic_5 SED_5 CAV_5 ASI_5 VSI_5 IH_5
global acc_cm_6 vel_cm_6 disp_cm_6  T_rec_end_6  SPA_6 SPV_6 SV_6 T_rec_6
global pga_6 pgv_6 pgd_6 t_pga_6 t_pgv_6 t_pgd_6 ratio_pga_pgv_6 ratio_pgv_pga_6 ratio_pgd_pgv_6 Ia_int_6 Ia_tot_6 Ia_val_6 Ia_6 arms_6 vrms_6 drms_6 Ic_6 SED_6 CAV_6 ASI_6 VSI_6 IH_6
global acc_cm_7 vel_cm_7 disp_cm_7  T_rec_end_7  SPA_7 SPV_7 SV_7 T_rec_7
global pga_7 pgv_7 pgd_7 t_pga_7 t_pgv_7 t_pgd_7 ratio_pga_pgv_7 ratio_pgv_pga_7 ratio_pgd_pgv_7 Ia_int_7 Ia_tot_7 Ia_val_7 Ia_7 arms_7 vrms_7 drms_7 Ic_7 SED_7 CAV_7 ASI_7 VSI_7 IH_7


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record
if set_content==1

[ pga_0,pgv_0, pgd_0,t_pga_0, t_pgv_0, t_pgd_0, ratio_pga_pgv_0, ratio_pgv_pga_0, ratio_pgd_pgv_0, Ia_int_0,Ia_tot_0, Ia_val_0,Ia_0,arms_0,vrms_0, drms_0, Ic_0, SED_0, CAV_0, ASI_0, VSI_0, IH_0] = gm_param_function( acc_cm_0, vel_cm_0, disp_cm_0, input_dt, T_rec_end_0 ,dTn, SPA_0, SPV_0, SV_0, T_rec_0 );
pga=pga_0;
t_pga=t_pga_0;
pgv=pgv_0;
t_pgv=t_pgv_0;
pgd=pgd_0;
t_pgd=t_pgd_0;
ratio_pga_pgv=ratio_pga_pgv_0;
ratio_pgv_pga=ratio_pgv_pga_0;
ratio_pgd_pgv=ratio_pgd_pgv_0;
Ia_val=Ia_val_0;
arms=arms_0;
vrms=vrms_0;
drms=drms_0;
Ic=Ic_0;
SED=SED_0;
CAV=CAV_0;
ASI=ASI_0;
VSI=VSI_0;
IH=IH_0;
Ia=Ia_0;
acc_cm=acc_cm_0;
end


%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set


if set_content==7
    
[ pga_1,pgv_1, pgd_1,t_pga_1, t_pgv_1, t_pgd_1, ratio_pga_pgv_1, ratio_pgv_pga_1, ratio_pgd_pgv_1, Ia_int_1,Ia_tot_1, Ia_val_1,Ia_1,arms_1,vrms_1, drms_1, Ic_1, SED_1, CAV_1, ASI_1, VSI_1, IH_1] = gm_param_function( acc_cm_1, vel_cm_1, disp_cm_1, input_dt, T_rec_end_1 ,dTn, SPA_1, SPV_1, SV_1, T_rec_1 );
[ pga_2,pgv_2, pgd_2,t_pga_2, t_pgv_2, t_pgd_2, ratio_pga_pgv_2, ratio_pgv_pga_2, ratio_pgd_pgv_2, Ia_int_2,Ia_tot_2, Ia_val_2,Ia_2,arms_2,vrms_2, drms_2, Ic_2, SED_2, CAV_2, ASI_2, VSI_2, IH_2] = gm_param_function( acc_cm_2, vel_cm_2, disp_cm_2, input_dt, T_rec_end_2 ,dTn, SPA_2, SPV_2, SV_2, T_rec_2 );
[ pga_3,pgv_3, pgd_3,t_pga_3, t_pgv_3, t_pgd_3, ratio_pga_pgv_3, ratio_pgv_pga_3, ratio_pgd_pgv_3, Ia_int_3,Ia_tot_3, Ia_val_3,Ia_3,arms_3,vrms_3, drms_3, Ic_3, SED_3, CAV_3, ASI_3, VSI_3, IH_3] = gm_param_function( acc_cm_3, vel_cm_3, disp_cm_3, input_dt, T_rec_end_3 ,dTn, SPA_3, SPV_3, SV_3, T_rec_3 );
[ pga_4,pgv_4, pgd_4,t_pga_4, t_pgv_4, t_pgd_4, ratio_pga_pgv_4, ratio_pgv_pga_4, ratio_pgd_pgv_4, Ia_int_4,Ia_tot_4, Ia_val_4,Ia_4,arms_4,vrms_4, drms_4, Ic_4, SED_4, CAV_4, ASI_4, VSI_4, IH_4] = gm_param_function( acc_cm_4, vel_cm_4, disp_cm_4, input_dt, T_rec_end_4 ,dTn, SPA_4, SPV_4, SV_4, T_rec_4 );
[ pga_5,pgv_5, pgd_5,t_pga_5, t_pgv_5, t_pgd_5, ratio_pga_pgv_5, ratio_pgv_pga_5, ratio_pgd_pgv_5, Ia_int_5,Ia_tot_5, Ia_val_5,Ia_5,arms_5,vrms_5, drms_5, Ic_5, SED_5, CAV_5, ASI_5, VSI_5, IH_5] = gm_param_function( acc_cm_5, vel_cm_5, disp_cm_5, input_dt, T_rec_end_5 ,dTn, SPA_5, SPV_5, SV_5, T_rec_5 );
[ pga_6,pgv_6, pgd_6,t_pga_6, t_pgv_6, t_pgd_6, ratio_pga_pgv_6, ratio_pgv_pga_6, ratio_pgd_pgv_6, Ia_int_6,Ia_tot_6, Ia_val_6,Ia_6,arms_6,vrms_6, drms_6, Ic_6, SED_6, CAV_6, ASI_6, VSI_6, IH_6] = gm_param_function( acc_cm_6, vel_cm_6, disp_cm_6, input_dt, T_rec_end_6 ,dTn, SPA_6, SPV_6, SV_6, T_rec_6 );
[ pga_7,pgv_7, pgd_7,t_pga_7, t_pgv_7, t_pgd_7, ratio_pga_pgv_7, ratio_pgv_pga_7, ratio_pgd_pgv_7, Ia_int_7,Ia_tot_7, Ia_val_7,Ia_7,arms_7,vrms_7, drms_7, Ic_7, SED_7, CAV_7, ASI_7, VSI_7, IH_7] = gm_param_function( acc_cm_7, vel_cm_7, disp_cm_7, input_dt, T_rec_end_7 ,dTn, SPA_7, SPV_7, SV_7, T_rec_7 );
   
    
  global select_rec; %selected record
switch get(get(handles.uipanel8,'SelectedObject'),'Tag')
      case 'rb_rec_1',  select_rec=1;
      case 'rb_rec_2',  select_rec=2;
      case 'rb_rec_3',  select_rec=3;    
      case 'rb_rec_4',  select_rec=4;    
      case 'rb_rec_5',  select_rec=5;    
      case 'rb_rec_6',  select_rec=6;    
      case 'rb_rec_7',  select_rec=7;    
end

if select_rec==1
      pga=pga_1;
        t_pga=t_pga_1;
        pgv=pgv_1;
        t_pgv=t_pgv_1;
        pgd=pgd_1;
        t_pgd=t_pgd_1;
        ratio_pga_pgv=ratio_pga_pgv_1;
        ratio_pgv_pga=ratio_pgv_pga_1;
        ratio_pgd_pgv=ratio_pgd_pgv_1;
        Ia_val=Ia_val_1;
        arms=arms_1;
        vrms=vrms_1;
        drms=drms_1;
        Ic=Ic_1;
        SED=SED_1;
        CAV=CAV_1;
        ASI=ASI_1;
        VSI=VSI_1;
        IH=IH_1;
        Ia=Ia_1;
        acc_cm=acc_cm_1;
else if select_rec==2
          pga=pga_2;
            t_pga=t_pga_2;
            pgv=pgv_2;
            t_pgv=t_pgv_2;
            pgd=pgd_2;
            t_pgd=t_pgd_2;
            ratio_pga_pgv=ratio_pga_pgv_2;
            ratio_pgv_pga=ratio_pgv_pga_2;
            ratio_pgd_pgv=ratio_pgd_pgv_2;
            Ia_val=Ia_val_2;
            arms=arms_2;
            vrms=vrms_2;
            drms=drms_2;
            Ic=Ic_2;
            SED=SED_2;
            CAV=CAV_2;
            ASI=ASI_2;
            VSI=VSI_2;
            IH=IH_2;
            Ia=Ia_2;
            acc_cm=acc_cm_2;
    else if select_rec==3
          pga=pga_3;
            t_pga=t_pga_3;
            pgv=pgv_3;
            t_pgv=t_pgv_3;
            pgd=pgd_3;
            t_pgd=t_pgd_3;
            ratio_pga_pgv=ratio_pga_pgv_3;
            ratio_pgv_pga=ratio_pgv_pga_3;
            ratio_pgd_pgv=ratio_pgd_pgv_3;
            Ia_val=Ia_val_3;
            arms=arms_3;
            vrms=vrms_3;
            drms=drms_3;
            Ic=Ic_3;
            SED=SED_3;
            CAV=CAV_3;
            ASI=ASI_3;
            VSI=VSI_3;
            IH=IH_3;
            Ia=Ia_3;
            acc_cm=acc_cm_3;
         else if select_rec==4
             pga=pga_4;
                t_pga=t_pga_4;
                pgv=pgv_4;
                t_pgv=t_pgv_4;
                pgd=pgd_4;
                t_pgd=t_pgd_4;
                ratio_pga_pgv=ratio_pga_pgv_4;
                ratio_pgv_pga=ratio_pgv_pga_4;
                ratio_pgd_pgv=ratio_pgd_pgv_4;
                Ia_val=Ia_val_4;
                arms=arms_4;
                vrms=vrms_4;
                drms=drms_4;
                Ic=Ic_4;
                SED=SED_4;
                CAV=CAV_4;
                ASI=ASI_4;
                VSI=VSI_4;
                IH=IH_4;
                Ia=Ia_4;
                acc_cm=acc_cm_4;
                else if select_rec==5
                 pga=pga_5;
                    t_pga=t_pga_5;
                    pgv=pgv_5;
                    t_pgv=t_pgv_5;
                    pgd=pgd_5;
                    t_pgd=t_pgd_5;
                    ratio_pga_pgv=ratio_pga_pgv_5;
                    ratio_pgv_pga=ratio_pgv_pga_5;
                    ratio_pgd_pgv=ratio_pgd_pgv_5;
                    Ia_val=Ia_val_5;
                    arms=arms_5;
                    vrms=vrms_5;
                    drms=drms_5;
                    Ic=Ic_5;
                    SED=SED_5;
                    CAV=CAV_5;
                    ASI=ASI_5;
                    VSI=VSI_5;
                    IH=IH_5;
                    Ia=Ia_5;
                    acc_cm=acc_cm_5;
                        else if select_rec==6
                          pga=pga_6;
                            t_pga=t_pga_6;
                            pgv=pgv_6;
                            t_pgv=t_pgv_6;
                            pgd=pgd_6;
                            t_pgd=t_pgd_6;
                            ratio_pga_pgv=ratio_pga_pgv_6;
                            ratio_pgv_pga=ratio_pgv_pga_6;
                            ratio_pgd_pgv=ratio_pgd_pgv_6;
                            Ia_val=Ia_val_6;
                            arms=arms_6;
                            vrms=vrms_6;
                            drms=drms_6;
                            Ic=Ic_6;
                            SED=SED_6;
                            CAV=CAV_6;
                            ASI=ASI_6;
                            VSI=VSI_6;
                            IH=IH_6;
                            Ia=Ia_6;
                            acc_cm=acc_cm_6;
                                else if select_rec==7
                                      pga=pga_7;
                                        t_pga=t_pga_7;
                                        pgv=pgv_7;
                                        t_pgv=t_pgv_7;
                                        pgd=pgd_7;
                                        t_pgd=t_pgd_7;
                                        ratio_pga_pgv=ratio_pga_pgv_7;
                                        ratio_pgv_pga=ratio_pgv_pga_7;
                                        ratio_pgd_pgv=ratio_pgd_pgv_7;
                                        Ia_val=Ia_val_7;
                                        arms=arms_7;
                                        vrms=vrms_7;
                                        drms=drms_7;
                                        Ic=Ic_7;
                                        SED=SED_7;
                                        CAV=CAV_7;
                                        ASI=ASI_7;
                                        VSI=VSI_7;
                                        IH=IH_7;
                                        Ia=Ia_7;
                                        acc_cm=acc_cm_7;
                                    end
                            end
                    end
             end
        end
    end
end  

end
    
    




r1=strjoin({'PGA', '(', unit_label_acc, ')'});%row 1
acc_tt(1,1)=pga*unit_coeff_acc;
r2=strjoin({'Time of PGA (s)'});%row 2
acc_tt(2,1)=t_pga;
r3=strjoin({'PGV', '(', unit_label_vel, ')'});
acc_tt(3,1)=pgv*unit_coeff_vel;
r4=strjoin({'Time of PGV (s)'});
acc_tt(4,1)=t_pgv;
r5=strjoin({'PGD', '(', unit_label_disp, ')'});
acc_tt(5,1)=pgd*unit_coeff_disp;
r6=strjoin({'Time of PGD (s)'});
acc_tt(6,1)=t_pgd;
r7=strjoin({'PGA/PGV'});
acc_tt(7,1)=ratio_pga_pgv;
r8=strjoin({'PGV/PGA'});
acc_tt(8,1)=ratio_pgv_pga;
r9=strjoin({'PGD/PGV'});
acc_tt(9,1)=ratio_pgd_pgv;
r10=strjoin({'Arias intensity', '(', unit_label_vel, ')'});
acc_tt(10,1)=Ia_val*unit_coeff_vel*unit_coeff_vel;
r11=strjoin({'Acceleration RMS', '(', unit_label_acc, ')'});
acc_tt(11,1)=arms*unit_coeff_acc;
r12=strjoin({'Velocity RMS', '(', unit_label_vel, ')'});
acc_tt(12,1)=vrms*unit_coeff_vel;
r13=strjoin({'Displacement RMS', '(', unit_label_disp, ')'});
acc_tt(13,1)=drms*unit_coeff_disp;
r14=strjoin({'Characteristic intensity Ic'});
acc_tt(14,1)=Ic*sqrt(unit_coeff_disp^3);
r15=strjoin({'Specific Energy Density SED', '(', unit_label_acc, ')'});
acc_tt(15,1)=SED*unit_coeff_acc*unit_coeff_acc;
r16=strjoin({'Cumulative Absolute Velocity CAV', '(', unit_label_vel, ')'});
acc_tt(16,1)=CAV*unit_coeff_vel;
r17=strjoin({'Acceleration Spectrum Intensity ASI', '(', unit_label_vel, ')'});
acc_tt(17,1)=ASI*unit_coeff_vel;
r18=strjoin({'Velocity Spectrum Intensity VSI', '(', unit_label_disp, ')'});
acc_tt(18,1)=VSI*unit_coeff_disp;
r19=strjoin({'Housner intensity IH', '(', unit_label_disp, ')'});
acc_tt(19,1)=IH*unit_coeff_disp;


set(handles.uitable1, 'ColumnName', {'Values' });
t_rnames={r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15 r16 r17 r18 r19};
set(handles.uitable1, 'RowName', t_rnames );
set(handles.uitable1, 'data', acc_tt);
set(handles.uitable1,'ColumnWidth',{100})

axes(handles.axes1);
cla;
xlabel('');
ylabel('') ;
legend('off');
set(handles.text2,'Visible', 'off');
set(handles.edit1,'String','5');



% --- Executes on button press in pb_plot_Ia.
function pb_plot_Ia_Callback(hObject, eventdata, handles)
% hObject    handle to pb_plot_Ia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global T_rec Ia Ia_0 Ia_1 Ia_2 Ia_3 Ia_4 Ia_5 Ia_6 Ia_7 set_content
global T_rec_0 T_rec_1 T_rec_2 T_rec_3 T_rec_4 T_rec_5 T_rec_6 T_rec_7

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record
if set_content==1
Ia=Ia_0;
T_rec=T_rec_0;
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set
if set_content==7
global select_rec; %selected record
switch get(get(handles.uipanel8,'SelectedObject'),'Tag')
      case 'rb_rec_1',  select_rec=1;
      case 'rb_rec_2',  select_rec=2;
      case 'rb_rec_3',  select_rec=3;    
      case 'rb_rec_4',  select_rec=4;    
      case 'rb_rec_5',  select_rec=5;    
      case 'rb_rec_6',  select_rec=6;    
      case 'rb_rec_7',  select_rec=7;    
end
if select_rec==1
      Ia=Ia_1;
      T_rec=T_rec_1;
else if select_rec==2
          Ia=Ia_2;
          T_rec=T_rec_2;
    else if select_rec==3
          Ia=Ia_3;
          T_rec=T_rec_3;
        else if select_rec==4
             Ia=Ia_4;
             T_rec=T_rec_4;
              else if select_rec==5
                 Ia=Ia_5;
                 T_rec=T_rec_5;
                       else if select_rec==6
                          Ia=Ia_6;
                          T_rec=T_rec_6;
                                else if select_rec==7
                                     Ia=Ia_7;
                                     T_rec=T_rec_7;
                                     end
                            end
                    end
             end
        end
    end
end  

end


axes(handles.axes1);
plot(T_rec,Ia) ;
grid ;
xlabel('Time (s)');
ylabel('Ia [%]') ;
set(handles.text2,'Visible','off');

% --- Executes on button press in pb_plot_duration.
function pb_plot_duration_Callback(hObject, eventdata, handles)
% hObject    handle to pb_plot_duration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global set_content acc_cm_0 acc_cm_1 acc_cm_2 acc_cm_3 acc_cm_4 acc_cm_5 acc_cm_6 acc_cm_7 acc_cm
global pga_0 pga_1 pga_2 pga_3 pga_4 pga_5 pga_6 pga_7 pga
global Ia Ia_0 Ia_1 Ia_2 Ia_3 Ia_4 Ia_5 Ia_6 Ia_7
global  T_rec T_rec_0 T_rec_1 T_rec_2 T_rec_3 T_rec_4 T_rec_5 T_rec_6 T_rec_7
global dur_type  input_dt  DU DB tt_DB
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%single record
if set_content==1
acc_cm=acc_cm_0;
pga=pga_0;
Ia=Ia_0;
T_rec=T_rec_0;
end

%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------
%seven record set
if set_content==7
global select_rec; %selected record
switch get(get(handles.uipanel8,'SelectedObject'),'Tag')
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
      pga=pga_1;
      Ia=Ia_1;
      T_rec=T_rec_1;
else if select_rec==2
          acc_cm=acc_cm_2;
          pga=pga_2;
          Ia=Ia_2;
          T_rec=T_rec_2;
    else if select_rec==3
          acc_cm=acc_cm_3;
          pga=pga_3;
          Ia=Ia_3;
          T_rec=T_rec_3;
        else if select_rec==4
             acc_cm=acc_cm_4;
             pga=pga_4;
             Ia=Ia_4;
             T_rec=T_rec_4;
              else if select_rec==5
                 acc_cm=acc_cm_5;
                 pga=pga_5;
                 Ia=Ia_5;
                 T_rec=T_rec_5;
                       else if select_rec==6
                          acc_cm=acc_cm_6;
                          pga=pga_6;
                          Ia=Ia_6;
                          T_rec=T_rec_6;
                                else if select_rec==7
                                     acc_cm=acc_cm_7;
                                     pga=pga_7;
                                     Ia=Ia_7;
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
%Calculating Bracketed duration DB

t_db=zeros;  %Array for storing the time values for the Bracketed duration DB
br11=0;
j=0;
str=get(handles.edit1,'string');             %By default, the acceleration level is 5% of PGA str=get(handles.txt_fline, 
A0_per_db=(str2double(str))/100;
A0_db2=(A0_per_db*pga)^2;   %Calculating the square of acceleration level
acc_db=acc_cm.^2;          %Calculating the square of record acceleration values

for br=0:input_dt:T_rec(end)
    
    br11=br11+1;            %Counter for the number of steps included
    
    if A0_db2<acc_db(br11) || A0_db2==acc_db(br11)
        j=j+1;
        t_db(j)=T_rec(br11);
    end
    
end

DU=j*input_dt-input_dt;                        %Uniform duration
DB=t_db(end)-t_db(1)+input_dt;               %Bracketed duration


tt_DB=t_db(1):input_dt:t_db(end);     %Time values of the Bracketed duration


global t_d_5_95 t_d_dur_5_95 T_td  Ia_t_d t_d
%--------------------------------------------------------------------------
%Calculating the Significant duration td

Ia_len=length(Ia); %total length of Ia array

t_d=zeros;
Ia_t_d=zeros;

br_td=1;
for br_ai=1:1:Ia_len
    if Ia(br_ai)>=5 && Ia(br_ai)<=95
        t_d(br_td)= T_rec(br_ai);   %calculating the significant duration 
        Ia_t_d(br_td)= Ia(br_ai);   %values of Ia included in the significant duration
        br_td=br_td+1;
    end
end

t_d_5_95 = [t_d(1),t_d(end)]; %T_d time interval
t_d_dur_5_95 = t_d(end)-t_d(1)+input_dt; %T_d duration
T_td=t_d(1):input_dt:t_d(end); %Time interval for plotting the significant duration



switch get(get(handles.uipanel3,'SelectedObject'),'Tag')
      case 'radiobutton1',  dur_type=1;  
      case 'radiobutton2',  dur_type=2;
      case 'radiobutton3',  dur_type=3;
      case 'radiobutton4',  dur_type=4;
end





%--------------------------------------------------------------------------
global plot_x1 plot_y1 plot_x2 plot_y2 x_label y_label leg_1 leg_2 unit_label_acc
if dur_type==1
 
    plot_x1=T_rec;
    plot_y1=acc_db;
    x_label='Time (s)';
    y_label=strjoin({'Acceleration', '(', unit_label_acc, ')^2'});   
    
axes(handles.axes1);
plot(plot_x1, plot_y1 );
grid ;
xlabel(x_label);
ylabel(y_label);
ab=num2str(DU);
string11=strjoin({'Uniform duration = ',ab,'s'});
set(handles.text2,'Visible', 'on');
set(handles.text2,'String',string11);


elseif dur_type==2
    plot_x1=T_rec;
    plot_y1=acc_db;
    plot_x2=tt_DB;
    plot_y2=A0_db2;
    x_label='Time (s)';
    y_label=strjoin({'Acceleration', '(', unit_label_acc, ')^2'});
    leg_1='Accelerogram^2';
    strng10=strjoin({'Bracketed duration DB=', num2str(DB),'s'});
    leg_2=strng10;
    
   
    
axes(handles.axes1);
plot(plot_x1, plot_y1,'r', plot_x2, plot_y2, 'b*');
grid ;
xlabel(x_label);
ylabel(y_label) ;
legend(leg_1, leg_2);

ab=num2str(DB);
string11=strjoin({'Bracketed duration = ',ab,'s'});
set(handles.text2,'Visible', 'on');
set(handles.text2,'String',string11);


elseif dur_type==3
       
axes(handles.axes1);
plot(T_rec,Ia,'r',T_td,Ia_t_d, 'b*') ;
grid ;
xlabel('Time (s)');
ylabel('Ia [%]') ;

strng8 = num2str(t_d_dur_5_95);
strng10=strjoin({'Significant duration t_d=', strng8,'s'});
legend('Calculated Ia %',strng10,'Location','east');


strng = num2str(t_d(1));
strng7 = num2str(Ia_t_d(1));
strng2=strjoin({'     ','\leftarrow',' ','Ia=',strng7,'%;',' ','t=', strng,'s'});
text(t_d(1),Ia_t_d(1),  strng2,...
    'HorizontalAlignment','left');
strng3 = num2str(t_d(end));
strng6 = num2str(Ia_t_d(end));
% strng5=strjoin({' ','Ia=',strng6,'%;',' ','t=', strng3,'s','\rightarrow','        '});
strng5=strjoin({'     ','\leftarrow',' ','Ia=',strng6,'%;',' ','t=', strng3,'s'});
text(t_d(end),Ia_t_d(end),  strng5,...
    'HorizontalAlignment','left');




ab=num2str(t_d_dur_5_95);
string11=strjoin({'Significant duration = ',ab,'s'});
set(handles.text2,'Visible', 'on');
set(handles.text2,'String',string11);  
     
elseif dur_type==4
    plot_x1=0;
    plot_y1=0;
    plot_x2=0;
    plot_y2=0;
    x_label=0;
    y_label=0;
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
set(handles.text2,'Visible', 'off');
set(handles.edit1,'String','5');



% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4



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
energy;


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
Fourier;
