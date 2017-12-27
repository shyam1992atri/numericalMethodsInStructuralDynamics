function [ y ] = sdofresponse(m,c,k,f,t,x0,v0)
%SDOFRESPONSE Compute response of SDOF system to given excitation.
%   Detailed explanation goes here

w = sqrt(k/m);
z = (c/m)/(2*w);
A = [0    1
     -w^2 -2*z*w];
B = [0
     1/m];
Cy = [1 0 % displacement
      0 1 % velocity
      -w^2 -2*z*w % abs acceleration
     ];
Dy = [0
      0
      0];
sys = ss(A,B,Cy,Dy);

y = lsim(sys,f,t,[x0;v0]);

end

