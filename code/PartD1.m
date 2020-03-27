
%% LQR For linearized system 
%% Parameters already given
m=1000;
l1=20;
l2=10;
g=9.8;
m1=100;
m2=100;
%% defining the state matrices 
A=[0 1 0 0 0 0;
    0 0 -(m1*g)/m 0 -(m2*g)/m 0;
    0 0 0 1 0 0;
    0 0 (-(m1*g)/(m*l1) -(g/l1)) 0 -(m2*g)/(m*l1) 0; 
    0 0 0 0 0 1; 
    0 0 -(m1*g)/(m*l2) 0 (-(m2*g)/(m*l2) -(g/l2)) 0 ];
B=[0; 1/m; 0; 1/(m*l1); 0; 1/(m*l2)];
C=[1 0 0 0 0 0; 0 0 1 0 0 0;0 0 0 0 1 0];
D=0;
states = {'x' 'x_dot' 'p1' 'p1_dot' 'p2' 'p2_dot'}; %states
inputs = {'F'};    % intput
outputs = {'x' ;'p1';'p2'};  % output
%% defining the lqr inputs 
Q = [1000 0 0 0 0 0;
    0 0 0 0 0 0; 
    0 0 1000000 0 0 0; 
    0 0 0 0 0 0;
    0 0 0 0 1000000 0;
    0 0 0 0 0 0]       %LQR Input
R = 0.1 ;              %LQR Input
K = lqr(A,B,Q,R)       %Gain Calculation from LQR
%% applying the lqr gain K
Ac = [(A-(B*K))];
Bc = [B];
Cc = [C];
Dc = [D];
states = {'x' 'x_dot' 'p1' 'p1_dot' 'p2' 'p2_dot'};  %states
inputs = {'f'}; % intput after lqr
outputs = {'x' ;'p1';'p2'}; % output after lqr
sys_cl = ss(Ac,Bc,Cc,Dc,'statename',states,'inputname',inputs,
'outputname',outputs); %creates statesspace model
t = 0:0.1:200;
f = 50*ones(size(t));
[y,t,x]=lsim(sys_cl,f,t); %simulates response
%% plotting the response 
[AX,H1,H2] = plotyy(t,y(:,1),[t,t],[y(:,2),y(:,3)],'plot');
set(get(AX(1),'Ylabel'),'String','cart position (m)');
set(get(AX(2),'Ylabel'),'String','pendulum angle (radians)');
title('Step Response with LQR Control');