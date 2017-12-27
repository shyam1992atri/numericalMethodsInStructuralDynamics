clear all
clc

problem2a=2.1
syms fB wfB tB wB zB tauB k
%vA=int((fA*sin(wfA*tauA)*(wA/(k*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA)^0.5))),tauA,0,tA);
%vA=int((fA*sin(wfA*tauA)*(wA/(k*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA)^0.5))),tauA,0,tA);

vB=int((fB*cos(wfB*tauB)*(wB/(k*(1-zB^2)^0.5))*(exp(-zB*wB*(tB-tauB)))*(sin(wB*(tB-tauB)*(1-zB^2)^0.5))),tauB,0,tB);


k=4*3.14*3.14;
fB=4*3.14*3.14;
wB=2*3.14;
zB=0.1;
wfB=2*3.14;
tB=0:0.01:5;
res=eval(vB);
res;

t=0:0.01:5;
figure
subplot(1,2,1)
plot(t,res)


simplify(vB);
pretty(vB)

% 
% 
% 
f=4*3.14*3.14;

omg=2*pi; %omg -- wA
z=0.1; %z -- zA
omd=omg*(1-z^2)^0.5; 
omf=2*3.14; % omf-- wfA
mag=omf/omg;
t=0:0.01:5;
y=ones(1,size(t,2));
c=ones(1,size(t,2));
d=ones(1,size(t,2));
for i=1:size(t,2)
    c(i)=(f/k)*((1-mag^2)/((1-mag^2)^2+(2*z*mag)^2));
    d(i)=(f/k)*((-2*z*mag)/((1-mag^2)^2+(2*z*mag)^2));
    y(i)=(c(i)*sin(omf*t(i))+d(i)*cos(omf*t(i)));
   
end



subplot(1,2,2)
plot(t,y)