clear all
clc
syms t 
t=-0.01:0.01:5;
y1=heaviside(t);
y2=heaviside(t)-heaviside(t-1);
figure(1)
% fplot(heaviside(t),[-5,5])
plot(t,y1)
axis([-1,5,-1,2])
% 
figure(2)
plot(t,y2)
axis([-1,5,-1,2])