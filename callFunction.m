clear all
clc
%result = [t;p;uim1;u;pcap;uip1;uTheo]= CentralDifference(dt,z,tn)
r53=CentralDifference(0.1,0.05,1)
r54=CentralDifference(0.05,0.05,1)
maxValr54=max(r54(:,4))


r55=CentralDifference(0.05,0.2,1)
maxValr55=max(r55(:,4))
r56=CentralDifference(1/3,0.05,2)
plot(r54(:,1),r54(:,4))
hold on
plot(r55(:,1),r55(:,4),'-*')

% 
% a=[1:20];
% b=zeros(1,10);
% for i=2:10
%     
%     b(i)=a(2*(i-1)+1);
%     
% end
% b
% r54temp=r54(:,4);
% r53temp=r53(:,4);
% r54comp=zeros(size(r53(:,4),1),1);
% k=1;
% for i=1:size(r54comp,1)
%     r54comp(i)=r54temp(k);
%     if(k<size(r54temp,1))
%     k=k+2;
%     end
% end


dsd1






