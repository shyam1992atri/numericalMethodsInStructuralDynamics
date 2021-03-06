clear all
clc
%------------------------------------------------------------
problem2a=2.1
syms fA wfA tA wA zA tauA k
vA=int((fA*sin(wfA*tauA)*(wA/(k*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA^2)^0.5))),tauA,0,tA);

k=4*3.14*3.14;
fA=4*3.14*3.14;
wA=2*3.14;
zA=0.1;
wfA=2*3.14;
tA=0:0.01:5;
res=eval(vA);
res;

t=0:0.01:5;
figure
subplot(1,2,1)
plot(t,res)

simplify(vA);
pretty(vA)


f=4*pi*pi;

omg=2*pi; %omg -- wA
z=0.1; %z -- zA
omd=omg*(1-z^2)^0.5; 
omf=2*pi; % omf-- wfA
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