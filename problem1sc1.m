syms F0 Omg W tau k t

val=int((F0*sin(Omg*tau))*(W/k)*sin(W*(t-tau)),tau,0,t);

%val=int((F0*W/k)*sin(Omg*))
simplify(val)
pretty(val)