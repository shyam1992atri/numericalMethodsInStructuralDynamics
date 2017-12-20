function [ndof,dt,dtInPlot,tmaxVal,t0,X,Xd,M,C,K]=inputFileProblem1
%FOR N=2 

% this is for the two degree of freedom system
% 
% ndof=2;
% dt=0.01;
% dtInPlot=0.2;
% tmaxVal=5;
% t0=0;
% X=[0;0];
% Xd=[0;0];
% mu=0.05;
% % mu=0;
% m1=1;
% m2=mu*m1;
% 
% 
% k1=(2*pi)^2;
% k2=(2*pi)^2;
% % k2=0;
% 
% c1=2*0.01*sqrt(k1*m1);
% c2=2*0.01*sqrt(k2*m2);
% %c2=0;
% 
% M=[m1,0;0,m2];
% C=[c1+c2,-c2;-c2,c2];
% K=[k1+k2,-k2;-k2,k2];

% FOR N=1 
% 
% this is the number of degrees of freedom in our system

% this is for one degree of freedom system
ndof=1;

% this is solved for the problem from CA1 2a
% this is for time step

% this is total time
tmaxVal=5;

% this is initial time
t0=0;

% initial displacement
X=0;

% initial velocity
Xd=0;

% mass of the system
M=1;

% spring constant
K=(2*pi)^2;

% damping coeffecient
C=2*0.1*sqrt(K*M);

% this variable is used to compute the number of time steps present in our
% problem
dt=0.1;
dtInPlot=0.2;

end