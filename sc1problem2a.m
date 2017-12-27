syms W F0 k omg tau Wd z t c m

%v=int((W*F0/(k*(1-z^2)^0.5))*sin(omg*tau)*exp(-(c/2*m)*(t-tau))*sin(Wd*(t-tau)),tau,0,t);
v=int(((W*F0*exp(-c*t/(2*m)))/(k*(1-z^2)^0.5))*sin(omg*tau)*sin(Wd*(t-tau))*exp(c*tau/(2*m)),tau,0,t);
sol=((m*W*F0)/(k*(1-z^2)^0.5))*(((2*m*(omg+Wd)*sin(omg*t)+c*cos(omg*t))/(4*m^2*(omg+Wd)^2+c^2))-((2*m*(omg-Wd)*sin(omg*t)+c*cos(omg*t))/(4*m^2*(omg-Wd)^2+c^2))+((4*exp(-c*t/(2*m))*m*omg)*((4*m^2*(omg^2-Wd^2)+c^2)*sin(Wd*t))/(((4*m^2)*(omg+Wd^2)+c^2)*(4*m^2*(omg-Wd)^2+c^2)))+((4*exp(-c*t/(2*m))*m*omg)*((4*c*m*Wd*cos(Wd)*t)/((4*m^2*(omg+Wd)^2+c^2)*(4*m^2*(omg-Wd)^2+c^2)))));
test=sol-v;
simplify(test)
simplify(v)
pretty(v)

% syms w c m t k z wd tau 
% 
% v=int((w*exp(-(c*t)/(2*m))/(k*(1-z^2)^0.5))*exp((c*tau)/(2*m))*sin(wd*(t-tau)),tau,0,t);
% simplify(v)
% pretty(v)
% 
% sol=((4*m^2*w^2)/(k*(4*m^2*wd^2+c^2)))*(1-exp(-(c*t)/(2*m))*cos(wd*t)-((c/(2*m*wd))*sin(wd*t)*exp(-(c*t)/(2*m))));
% test=sol-v
% 
% simplify(test)