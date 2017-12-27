clear all
clc

problem2d=2.4
syms fD tD wD zD tauD


vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wD*(1-zD^2)^0.5))*(exp(-zD*wD*(tD-tauD)))*(sin(wD*(tD-tauD)*(1-zD^2)^0.5))),tauD,0,1); 

%original expression
%vD=int((fD*(heaviside(tauD)-heaviside(tauD-1))*(sin(pi*tauD))*(1/(wD*(1-zD^2)^0.5))*(exp(-zD*wD*(tD-tauD)))*(sin(wD*(tD-tauD)*(1-zD^2)^0.5))),tauD,0,tD); 
%original expression

% syms x td y
% a=int(sin(x) *( heaviside(x )-heaviside(x - 1))* cos(y), x, -0, td)
% simplify(a)
% pretty(a)

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

p=0:0.01:1;
qw=ones(1,size(p,2));
for i=1:size(p,2)
    
    qw(i)=(heaviside(p(i))-heaviside(p(i)-1))*(sin(pi*p(i)));

end
subplot(1,2,2)
plot(p,qw)



