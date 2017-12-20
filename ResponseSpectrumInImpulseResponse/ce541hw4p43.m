%problem 4.3
clear all
clc

%combined plot
%fplot(@(x) sin(2*pi*x), [0 1/8],'b')
%fplot(@(x) sin(2*pi*x-1/8), [1/8 2],'r')


figure

% when td/tn=1/8
subplot(3,3,1)
fplot(@(x) sin(2*pi*x),[0,2])

subplot(3,3,2)
fplot(@(x) -sin(2*pi*(x-0.125)),[1/8,2])

subplot(3,3,3)
a=linspace(0,0.125,100);
x=linspace(0.125,2,100);
z=sin(2*pi*a);
y=sin(2*pi*x)-sin(2*pi*(x-0.125));
plot(x,y,a,z)

% when td/tn=1/4
subplot(3,3,4)
fplot(@(x) sin(2*pi*x),[0,2])

subplot(3,3,5)
fplot(@(x) -sin(2*pi*(x-0.25)),[1/4,2])

subplot(3,3,6)
s=linspace(0,0.25,100);
xa=linspace(0.25,2,100);
d=sin(2*pi*s);
ya=sin(2*pi*xa)-sin(2*pi*(xa-0.25));
plot(xa,ya,s,d)


% when td/tn=1
subplot(3,3,7)
fplot(@(x) sin(2*pi*x),[0,2])

subplot(3,3,8)
fplot(@(x) -sin(2*pi*(x-1)),[1,2])

subplot(3,3,9)
sa=linspace(0,1,100);
xaa=linspace(1,2,100);
da=sin(2*pi*sa);
yaa=sin(2*pi*xaa)-sin(2*pi*(xaa-1));
plot(xaa,yaa,sa,da)


