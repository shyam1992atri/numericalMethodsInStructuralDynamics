function KnaturalFreqAndKmodes = MDOFpowerMethod(M,K,k)
kl=inv(M)*K;
phi=[1 0 0]';
%A=inv(M)*K;
A=[2 -1 0; 
    -1 2 -1;
    0 -1 2];
lamda_fix=1;
for i=1:100
   i
   %lamda=(phi'*K*phi)/(phi'*M*phi);
   w2=A*phi
   lamda=w2(1)
   phi=(1/w2(1))*w2

   diff=lamda-lamda_fix
   if(diff< 1E-3)
      i
       break 
   end
   lamda_fix=lamda
   KnaturalFreqAndKmodes=lamda_fix;
end
disp('lamda is ')
lamda_fix

% 
% 
end
%-----------------------
% clear all
% clc
% K=[16 -7 0;
%     -7 10 -3;
%     0 -3 3];
% M=[1 0 0;0 1 0; 0 0 .5]; %diag(1,1,0.5);
% 
% phi=[1 0]';
% %lamda=(phi'*K*phi)/(phi'*M*phi);
% % characteristic equation is
% % (m-1k-w2I)phi=0
% %m-1k phi = w2 phi
% %lamda
% %A=inv(M)*K;
% A=[5 4; 1 2];
% lamda_fix=1
% for i=1:100
%    i
%    w2=A*phi
%    lamda=w2(1)
%    phi=(1/w2(1))*w2
%    diff=lamda-lamda_fix
%    if(diff< 1E-6)
%       i
%        break 
%    end
%    lamda_fix=lamda
%    
% end
% disp('lamda is ')
% lamda_fix