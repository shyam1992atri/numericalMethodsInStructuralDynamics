%plotting all excitation functions

t=0:0.01:5;
f=4*pi*pi;
p2a=ones(1,size(f,2));
p2b=ones(1,size(f,2));

for i=1:size(t,2)
p2a(i)=f*sin(t(i));
p2b(i)=f*cos(t(i));
end
figure
subplot(1,2,1)
plot(t,p2a)

subplot(1,2,2)
plot(t,p2b)
