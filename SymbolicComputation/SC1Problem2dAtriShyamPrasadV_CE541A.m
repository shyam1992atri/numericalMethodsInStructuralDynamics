clear all
clc

%---------------------------------------------------


problem2d=2.4
syms fD tD wnD zD tauD

%we set the limit as 5 as we are doing it for half sine wave and we need
%only 5 amplitudes
vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wnD*(1-zD^2)^0.5))*(exp(-zD*wnD*(tD-tauD)))*(sin(wnD*(tD-tauD)*(1-zD^2)^0.5))),tauD,0,5); 

%original expression
%vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wD*(1-zD^2)^0.5))*(exp(-zD*wD*(tD-tauD)))*(sin(wD*(tD-tauD)*(1-zD^2)^0.5))),tauD,0,tD); 
%original expression

k=4*pi*pi;
fD=4*pi*pi;
wnD=2*pi;
zD=0.1;
%wfD=2*3.14;
tD=0:0.01:5;
%tD=0.5;
res=eval(vD);


t=0:0.01:5;
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
