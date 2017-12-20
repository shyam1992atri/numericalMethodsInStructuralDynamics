
%Problem 4.6

aByOmegaN=[0.05;0.1;0.5];
tByTn=[0:0.01:5];
lhs=zeros(size(aByOmegaN,1),size(tByTn,2));
term1=zeros(size(aByOmegaN,1),size(tByTn,2));

term2=zeros(size(aByOmegaN,1),size(tByTn,2));

for i=1:size(aByOmegaN,1)
   
    for j=1:size(tByTn,2)
       
        term1(i,j)=(1/(1+(aByOmegaN(i,1))^2))*(aByOmegaN(i,1)*sin(2*pi*tByTn(1,j))- cos(2*pi*tByTn(1,j)) + exp(-2*pi*aByOmegaN(i,1)*tByTn(1,j)));
        term2(i,j)=(1/(1+4*(aByOmegaN(i,1))^2))*(2*aByOmegaN(i,1)*sin(2*pi*tByTn(1,j))- cos(2*pi*tByTn(1,j)) + exp(-2*pi*2*aByOmegaN(i,1)*tByTn(1,j)));
        lhs(i,j)=term1(i,j)-term2(i,j);
    end
    
end

figure
subplot(1,3,1)
plot(tByTn,lhs(1,:))
subplot(1,3,2)
plot(tByTn,lhs(2,:))
subplot(1,3,3)
plot(tByTn,lhs(3,:))









