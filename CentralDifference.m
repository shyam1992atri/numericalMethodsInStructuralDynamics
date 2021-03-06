
function [result] = CentralDifference(dt,z,tn)
m=0.2533; %kip s2 in-1
k=10; %kips in-1
%tn=1; %s
wn=(k/m)^0.5; %rd s-1
%z=0.05;% zeta
c=2*m*wn*z; % damp coef
%dt=0.1;%s

t=0:dt:tn;


p=10*sin(pi*t/0.6);

h=1;

while(h<=size(t,2) )
   if t(h)>0.6
      p(h)=0;
   end
   h=h+1;
end

u=zeros(1,size(t,2));
% uTheo=zeros(1,size(t,2));
pcap=zeros(1,size(t,2));


u0=0; % initial displacement
u(1)=u0;
ud0=0; % initial velocity
udd0=(p(1)-c*u0-k*u0)/m; 
um1=(u0-dt*ud0+dt^2*0.5*udd0);

kcap=m/dt^2+c/(2*dt);
a=m/dt^2-c/(2*dt);
b=k-2*m/(dt)^2;

pcap(1)=p(1)-a*um1-b*u(1);

for i=2:size(t,2)
   
    u(i)=pcap(i-1)/kcap;
    pcap(i)=p(i)-a*u(i-1)-b*u(i);
    
end

uim1=[um1 u(1:(size(t,2)-1))];
up1=pcap(size(t,2))/kcap;
uip1=[u(2:(size(t,2))) up1];

%Theoritical values computed using first principles
% w=pi/0.6;
% omg=w/wn;
% C=(10/k)*((1-omg^2)/((1-omg^2)^2+(2*z*omg)^2));
% D=(10/k)*((-2*z*omg)/((1-omg^2)^2+(2*z*omg)^2));
% for k=1:size(t,2)
%    
%     uTheo(1,k)=C*sin(w*t(k))+D*cos(w*t(k));
% end

% The theoritical Value is calculated
% usin Duhamels integral
syms fA wfA tA wA zA tauA k
%vA=int((fA*sin(wfA*tauA)*(wA/(k*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA)^0.5))),tauA,0,tA);
%vA=int((fA*sin(wfA*tauA)*(wA/(k*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA)^0.5))),tauA,0,tA);

% differential equation is
% mxdd+cxd+kx= 10 sin(pi*t/0.6)
vA=int((fA*sin(wfA*tauA/0.6)*(wA/(k*(1-zA^2)^0.5))*(exp(-zA*wA*(tA-tauA)))*(sin(wA*(tA-tauA)*(1-zA^2)^0.5))),tauA,0,tA);


k=10;
fA=10;
wA=2*3.14;
zA=z;
wfA=pi;
tA=0:dt:tn;
res=eval(vA);

t=0:dt:tn;
disp('result = [t;p;uim1;u;pcap;uip1;uTheo]')

result=[t;p;uim1;u;pcap;uip1;res]';
%plot(t,u,t,res)

end
