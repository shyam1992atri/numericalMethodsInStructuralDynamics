% problem 5.4
clear all
clc
m=0.2533; %kip s2 in-1
k=10; %kips in-1
tn=1; %s
wn=6.283; %rd s-1
z=0.2;% zeta
c=2*m*wn*z; % damp coef
dt=0.05;%s

t=0:dt:1;


p=10*sin(pi*t/0.6);

h=1;

while(h<=size(t,2) )
   if t(h)>0.6
      p(h)=0;
   end
   h=h+1;
end
u=zeros(1,size(t,2));
uTheo=zeros(1,size(t,2));
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
w=pi/0.6;
omg=w/wn;
C=(10/k)*((1-omg^2)/((1-omg^2)^2+(2*z*omg)^2));
D=(10/k)*((-2*z*omg)/((1-omg^2)^2+(2*z*omg)^2));
for k=1:size(t,2)
   
    uTheo(1,k)=C*sin(w*t(k))+D*cos(w*t(k));
end
uim1=[um1 u(1:(size(t,2)-1))];
up1=pcap(size(t,2))/kcap;
uip1=[u(2:(size(t,2))) up1];
disp('result = [t;p;uim1;u;pcap;uip1;uTheo]')
result=[t;p;uim1;u;pcap;uip1;uTheo]'
plot(t,u)
