function [y_value,t]=rk4ca2(wf,dt,t,y,M,C,K,ndof,excitation)

% these k1 k2 k3 k4 are the terms of weights in the method
k1=equation(wf,t,y,M,C,K,ndof,excitation);

k2=equation(wf,t+dt/2,y+dt*k1/2,M,C,K,ndof,excitation);

k3=equation(wf,t+dt/2,y+dt*k2/2,M,C,K,ndof,excitation);

k4=equation(wf,t+dt,y+dt*k3,M,C,K,ndof,excitation);

% this is the computed y which is the solution to discritised first order
% equations got from state space conversion
y_value=y+1/6*(k1+2*k2+2*k3+k4)*dt;

% this is the time step increment
% it keeps incrementing for every time step in the while loop of the main
% file
t=t+dt;
end