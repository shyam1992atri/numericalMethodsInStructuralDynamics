clear all
clc

% problem1=1
% syms f1 wf1 t1 wn1 tau1 k1
% v1=int((f1*sin(wf1*tau1)*(wn1/k1)*sin(wn1*(t1-tau1))),tau1,0,t1);
% simplify(v1);
% pretty(v1)
% % 
% % % Testing the validity of the solution
% % s1=((f1/(wn1*(wf1^2-wn1^2)))*(wf1*sin(wn1*t1)-wn1*sin(wf1*t1)));
% % test=v1-s1;
% % simplify(test)
% 
% 
% problem2a=2.1
% syms fA wfA tA wA zA tauA
% vA=int((fA*sin(wfA*tauA)*(1/(wA*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA)^0.5))),tauA,0,tA);
% simplify(vA);
% pretty(vA)
% 
% problem2b=2.2
% syms fB wfB tB wB zB tauB
% vB=int((fB*cos(wfB*tauB)*(1/(wB*(1-zB^2)^0.5))*(exp(-zB*wB*(tB-tauB)))*(sin(wB*(tB-tauB)*(1-zB)^0.5))),tauB,0,tB);
% simplify(vB);
% pretty(vB)
% % 

% problem2c=2.3
% syms fC tC wC zC tauC k
% vC=int((fC*(wC/(k*(1-zC^2)^0.5))*(exp(-zC*wC*(tC-tauC)))*(sin(wC*(tC-tauC)*(1-zC)^0.5))),tauC,0,tC);
% 
% % asdf=subs(vC,{fC,wC,zC,tC},{4*3.14*3.14,2*3.14,0.1})

% fC=4*pi*pi;
% wC=2*pi;
% zC=0.1;
% %tC=1;
k=4*pi*pi;
% tC=0:0.01:5;
% res=eval(vC)
% 
% figure
% subplot(1,2,1)
% plot(tC,res)


% simplify(vC);
% pretty(vC)
% simplify(asdf)
% pretty(asdf)

% syms x y
% 
% f=x^2+y^2
% x=1:3
% y=1:3
% r=eval(f)
% plot(x,r)

% 
% syms qw er ty
% e=qw*er+ty;
% te=subs(e,{qw,ty},{1,2})
% 
% k=4*pi^2;
% omg=2*pi;
% z=0.1;
% omd=omg*(1-z^2)^0.5;
% t=0:0.01:5;
% y=ones(1,size(t,2));
% for i=1:size(t,2)
%     %y(i)=(1/k)*(1-exp(-z*omg*t(i))*(sin(omd*t(i))*((z)/(1-z^2)^0.5)+cos(omd*t(i))));
%     y(i)=(1-exp(-z*omg*t(i))*(sin(omd*t(i))*((z)/(1-z^2)^0.5)+cos(omd*t(i))));
% end
% 
% qwertyuio=y(100)
% 
% subplot(1,2,2)
% plot(t,y)

% syms t s m c k
% F=1/(m*s^2+c*s+k)
% f1=ilaplace(F)
% simplify(f1)
% pretty(ans)

problem2d=2.4
syms fD tD wD zD tauD
vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wD*(1-zD^2)^0.5))*(exp(-zD*wD*(tD-tauD)))*(sin(wD*(tD-tauD)*(1-zD)^0.5))),tauD,0,tD);
simplify(vD);
pretty(vD)

% syms x td y
% a=int(sin(x) *( heaviside(x )-heaviside(x - 1))* cos(y), x, -0, td)
% simplify(a)
% pretty(a)















