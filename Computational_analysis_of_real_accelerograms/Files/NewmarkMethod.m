function [disp,vel,acc,EI_nmrk,EI_abs] = NewmarkMethod(M,K,C,P,beta,gamma,T_rec_end,dt_rec,disp_g,vel_g)
% NEWMARK'S METHOD : LINEAR SYSTEM
% Reference : Dynamics of Structures - Anil K. Chopra
%-------------------------------------------------------------------------


% Time step
ti = 0;                         %initial time of the record
dt = dt_rec;                    %time step of the record
nt = fix((T_rec_end-ti)/dt);    %number of steps excluding the initial zero '0'


% Constants used in Newmark's integration
a1 = gamma/(beta*dt);
a2 = 1/(beta*(dt^2));
a3 = 1/(beta*dt);
a4 = gamma/beta;
a5 = 1/(2*beta);
a6 = ((gamma/(2*beta))-1)*dt;


disp=zeros(nt+1,1);
vel=zeros(nt+1,1);
acc=zeros(nt+1,1);
% EI_nmrk=zeros(nt,1);

d_P_cherta=zeros(nt,1);
d_disp=zeros(nt,1);
d_vel=zeros(nt,1);
d_acc=zeros(nt,1);

% Initial Conditions
vel(1)=0;     %Initial velocity
disp(1)=0;    %Initial displacement
EI_nmrk(1,1)=0; %Initial Relative Input energy EI
EI_abs(1,1)=0;  %Initial Absolute Input energy EI

acc(1)=(P(1)-C*vel(1)-K*disp(1))/M;  %Initial acceleration


K_cherta=K+a1*C+a2*M;

a=a3*M+a4*C;

b=a5*M+a6*C;

% Time step calculations

for i = 1:nt
 
    d_P_cherta(i)=(P(i+1)-P(i))+a*vel(i)+b*acc(i);
    
    d_disp(i)=d_P_cherta(i)/K_cherta;
    
    d_vel(i)=a1*d_disp(i)-a4*vel(i)-a6*acc(i);
    
    d_acc(i)=a2*d_disp(i)-a3*vel(i)-a5*acc(i);
    
    
    disp(i+1)=disp(i)+d_disp(i);    %Displacement
    vel(i+1)=vel(i)+d_vel(i);       %Velocity
    acc(i+1)=acc(i)+d_acc(i);       %Acceleration
    
    EI_nmrk(i+1)=cumsum(P(i+1)*vel(i+1))*dt;                        %Relative Input energy EI calculated by Almansa formulation
    EI_abs(i+1)=cumsum((P(i+1)+acc(i+1))*vel_g(i+1))*dt;            %Absolute Input energy EI calculated by Uang and Bertero
    

% 
%     ut=zeros(nt,1);
%     ut(1,1)=0;
%     ut_tochka=zeros(nt,1);
%     ut_tochka(1,1)=0;
%     ut_2tochki=zeros(nt,1);
%     ut_2tochki(1,1)=0;
% 
%     syms dt;
%     ut(i+1)=disp(i+1)+disp_g(i+1);
%     ut_tochka(i+1)=diff(ut(i+1),dt);
%     ut_2tochki(i+1)=diff(ut_tochka(i+1),dt);
%     EI_abs(i+1)=cumsum(ut_2tochki(i+1)*vel_g(i+1))*dt;            %Absolute Input energy EI calculated by Uang and Bertero
%       
%     
 
end
