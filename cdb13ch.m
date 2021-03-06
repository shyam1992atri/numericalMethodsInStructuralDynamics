% problem 5.3
% clear all
% clc
% function [a,b]=CentralDifference(x,y)
% a=2*x;
% b=3*y;
% end

function [result] = cdb13ch(wn,m)
%m=0.2591; %kip s2 in-1
k=169.5; %kips in-1
%tn=1; %s
%wn=19.56; %rd s-1
%wn= 47.26
z=0.05;% zeta
c=2*m*wn*z; % damp coef
%dt=0.1;%s
g=386;
%t=0:dt:tn;
elcentro; 
t=tg(:,1);
t=t';
p=tg(:,2)*g;
p=p';
dt=0.01;
% p=10*sin(pi*t/0.6);
% 
% h=1;
% 
% while(h<=size(t,2) )
%    if t(h)>0.6
%       p(h)=0;
%    end
%    h=h+1;
% end

u=zeros(1,size(t,2));
acc=zeros(1,size(t,2));


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
disp('result = [t;p;uim1;u;pcap;uip1;uTheo]')
for y=1:size(u,2)
   
    acc(y)=(uip1(y)-2*u(y)+ uim1(y))/0.02^2;
end
result=[t;u;acc]';
%acc = uip1-2ui+uim1 / dt^2





end
