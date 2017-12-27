clear all
clc

%-----------------------------------------------

problem2c=2.3
%syms fC tC wC zC tauC k


k=4*pi^2;
fC=4*pi*pi;

wC=2*pi;
zC=0.1;

tC=0:0.01:5;
xt=ones(1,size(tC,2));
ht=ones(1,size(tC,2));

tim=linspace(0,5,1001);

for i=1:size(tC,2)

    xt(i)=(fC*sin(tC(i)));
    ht(i)=(1/(wC*(1-zC^2)^0.5))*(exp(-zC*wC*(tC(i))))*(sin(wC*(tC(i))*(1-zC^2)^0.5));
    %vC=int((fC*(1/(wC*(1-zC^2)^0.5))*(exp(-zC*wC*(tC-tauC)))*(sin(wC*(tC-tauC)*(1-zC^2)^0.5))),tauC,0,tC);
end
a=[1 2 3];

b=[4 5 6];
sol=conv(xt,ht);

figure
subplot(1,2,1)

plot(tim,sol)
%res=eval(vC);
% to get individual plot please uncomment this
% figure
% subplot(1,2,1)
% 
% plot(tC,res)
%hold on % when you want individual subplot please comment out this

% simplify(vC);
% pretty(vC)

f=4*pi*pi;
omg=2*pi;
z=0.1;
omd=omg*(1-z^2)^0.5;
t=0:0.01:5;
y=ones(1,size(t,2));
for i=1:size(t,2)
    y(i)=(f/k)*(1-exp(-z*omg*t(i))*(sin(omd*t(i))*((z)/(1-z^2)^0.5)+cos(omd*t(i))));
    %y(i)=(1-exp(-z*omg*t(i))*(sin(omd*t(i))*((z)/(1-z^2)^0.5)+cos(omd*t(i))));
end


% to get individual plot please uncomment this
subplot(1,2,2)
plot(t,y)
%plot(t,y, '*') % when you want individual subplot please comment out this


