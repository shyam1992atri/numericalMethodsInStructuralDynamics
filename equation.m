function f=equation(wf,t,y,M,C,K,ndof,excitation)
% A is the evolution matrix of state space
A=[zeros(ndof),eye(ndof);-inv(M)*K,-inv(M)*C];

% B is the control matrix of state space
B=[zeros(ndof),zeros(ndof);zeros(ndof),inv(M)];

% u is the forcing function that we apply to the system at that time step
u=[zeros(ndof,1);inv(M)*eye(ndof,1)*(wf)^2*sin(wf*t)];

% this is the state space equation
% this equation contains the higher order system
% broken down into a seres of
% first order equations
f=A*y+B*u;
end