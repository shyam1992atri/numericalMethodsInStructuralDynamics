function lam = ivim(M,K,k)

M=0.259*[1 0 0;
    0 1 0;
    0 0 .5];
K=(168/9)*[16 -7 0;
    -7 10 -3;
    0 -3 3];
k=3

xjp1=[1 1 1]';

la=0;



for i=1:100
   i;
   xjp1;
   %disp('this is initial ising xjp1')
   xjp1=inv(K)*M*xjp1;
   lamda=(xjp1'*K*xjp1)/(xjp1'*M*xjp1);
   % this is the normalised forn
   %disp('this is the normalised xjp1')
   xjp1=xjp1/(xjp1'*M*xjp1)^0.5;
   
   toler=lamda-la;
   
   toler;
   if(abs(toler)<0.001 )
       break 
   end
   la=lamda;
end


%-----------------

shift1=la*3
l2s=shift1;
%l1s is l tilda
% shift is mu

K1s=K-shift1*M;


xjp1=[1 1 1]';


disp('k val is')
disp(k)
for i=1:100
   i;
   xjp1;
   %disp('this is initial ising xjp1')
   xjp1=inv(K1s)*M*xjp1
   lamda=(xjp1'*K1s*xjp1)/(xjp1'*M*xjp1)
   % this is the normalised forn
   %disp('this is the normalised xjp1')
   xjp1=xjp1/(xjp1'*M*xjp1)^0.5;
   
   toler=lamda-l2s;
   
   toler;
   if(abs(toler)<0.001 )
       disp('toler')
       toler
       break 
   end
   l2s=lamda;
end
l2=shift1+l2s;

%------------------------
shift2=l2*3
l3s=shift2;
%l1s is l tilda
% shift is mu

K2s=K-shift2*M;


xjp1=[1 1 1]';


for i=1:100
   i;
   xjp1;
   %disp('this is initial ising xjp1')
   xjp1=inv(K2s)*M*xjp1;
   lamda=(xjp1'*K2s*xjp1)/(xjp1'*M*xjp1);
   % this is the normalised forn
   %disp('this is the normalised xjp1')
   xjp1=xjp1/(xjp1'*M*xjp1)^0.5;
   
   toler=lamda-l3s;
   
   toler;
   if(abs(toler)<0.001 )
       break 
   end
   l3s=lamda;
end
l3=shift2+l3s;
lam=[la l2 l3]
end