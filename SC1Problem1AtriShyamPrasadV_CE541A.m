clear all
clc

%----------------------------------------------

problem1=1
syms f1 wf1 t1 wn1 tau1 k1
v1=int((f1*sin(wf1*tau1)*(wn1/k1)*sin(wn1*(t1-tau1))),tau1,0,t1);
simplify(v1);
pretty(v1)
% 