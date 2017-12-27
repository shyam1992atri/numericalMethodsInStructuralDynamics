% Cal elcentro
clear all
clc

% m=100e3; % kg
% k=4e6 ; % n/m
% c=4e4; % ns/m
% x0=0;
% v0=0;
% g=9.81;
% elcentro; 
% t=tg(:,1);
% ydd=tg(:,2)*g;


% m=0.2591; % kg
% k=169.6 ; % n/m
% c=2*19.56*.05*0.2591; % ns/m
% x0=0;
% v0=0;
% g=386;
% elcentro; 
% t=tg(:,1);
% ydd=tg(:,2)*g;
% y=sdofresponse(m,c,k,-m*ydd,t,x0,v0);
% figure(1)
% plot(t,y(:,1))
dt=0.01;
wn1=16.24; %rd s-1
m1=0.2588; %ki
m2=0.2588; %ki
wn2= 35.508;
m3=0.2588; %ki
wn3= 51.75;
qwer1=cdb13ch(wn1,m1);
qwer2=cdb13ch(wn2,m2);
qwer3=cdb13ch(wn3,m3);
ei=[0.314 -0.5 3.186;
    0.686 -0.5 -2.186;
    1 1 1];
% n=sqrt();
% ei=ei/n;
ugl1=qwer1(:,2);
ugl2=qwer2(:,2);
ugl3=qwer3(:,2);
uglb=[ ugl1';ugl2';ugl3'];
size(uglb)
uact=ei*uglb;

tyu1=uact(1,:)/6.2365;
max(tyu1)

tyu2=uact(2,:)/2.8389;
max(tyu2)


tyu3=uact(2,:)/3.331;
max(tyu3)

figure(1)
plot(qwer1(:,1), tyu1')
axis([0 30 -1 1]);
saveas(figure(1),'p138a1.png')

figure(2)
plot(qwer2(:,1), tyu2')
axis([0 30 -1 1]);
saveas(figure(2),'p138a2.png')

figure(3)
plot(qwer3(:,1), tyu3')
axis([0 30 -1 1]);
saveas(figure(3),'p138a3.png')




