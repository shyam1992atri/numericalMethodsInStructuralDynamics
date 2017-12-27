a=[1 2]';
b=[3 4]';
c=[5 6]';
ab=a.*b
cc=c.*c
ae=sqrt(a'*b-c'*c)

% ae=0;
% 
% %for i=1:length(a)
%    
%    % ae=sqrt(a(i,:)*b(i,:)-c(i,:)*c(i,:))+ae;
%    ae=sqrt(a.*b-c.*c);
% %end
% 
% ae