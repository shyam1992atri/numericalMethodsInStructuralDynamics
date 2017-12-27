clear all
clc

%----------------------------------------------

problem1=1
syms f1 wf1 t1 wn1 tau1 k1
v1=int((f1*sin(wf1*tau1)*(wn1/k1)*sin(wn1*(t1-tau1))),tau1,0,t1);
simplify(v1);
pretty(v1)
% 



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

%-------------------------------------------

problem2b=2.2
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

%-----------------------------------------------



problem2c=2.3
syms fC tC wC zC tauC k
vC=int((fC*(1/(wC*(1-zC^2)^0.5))*(exp(-zC*wC*(tC-tauC)))*(sin(wC*(tC-tauC)*(1-zC^2)^0.5))),tauC,0,tC);

k=4*pi^2;
% fC=4*pi*pi;
fC=1;
wC=2*pi;
zC=0.1;

tC=0:0.01:5;
res=eval(vC);

% figure
% subplot(1,2,1)

plot(tC,res)
hold on

simplify(vC);
pretty(vC)





omg=2*pi;
z=0.1;
omd=omg*(1-z^2)^0.5;
t=0:0.01:5;
y=ones(1,size(t,2));
for i=1:size(t,2)
    y(i)=(1/k)*(1-exp(-z*omg*t(i))*(sin(omd*t(i))*((z)/(1-z^2)^0.5)+cos(omd*t(i))));
    %y(i)=(1-exp(-z*omg*t(i))*(sin(omd*t(i))*((z)/(1-z^2)^0.5)+cos(omd*t(i))));
end

qwertyuio=y(100)

% subplot(1,2,2)
plot(t,y, '*')

%---------------------------------------------------


problem2d=2.4
syms fD tD wD zD tauD

vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wD*(1-zD^2)^0.5))*(exp(-zD*wD*(tD-tauD)))*(sin(wD*(tD-tauD)*(1-zD^2)^0.5))),tauD,0,1); 

%original expression
%vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wD*(1-zD^2)^0.5))*(exp(-zD*wD*(tD-tauD)))*(sin(wD*(tD-tauD)*(1-zD^2)^0.5))),tauD,0,tD); 
%original expression

k=4*3.14*3.14;
fD=4*3.14*3.14;
wD=2*3.14;
zD=0.1;
%wfD=2*3.14;
tD=0:0.01:1;
%tD=0.5;
res=eval(vD);


t=0:0.01:1;
figure
subplot(1,2,1)
plot(t,res)

simplify(vD);
pretty(vD)

p=0:0.01:5;
qw=ones(1,size(p,2));
for i=1:size(p,2)
    
    qw(i)=(heaviside(p(i))-heaviside(p(i)-1))*(sin(pi*p(i)));

end
subplot(1,2,2)
plot(p,qw)
