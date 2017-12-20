% problem 4.3 over all plot

figure
subplot(1,2,1)
x=linspace(0,0.25,100);
y=sin(2*pi*x);
ya=2*abs(sin(pi*x));
xa=linspace(0.25,2,100);
z=ones(1,size(xa,2));
za=2*abs(sin(pi*xa));
plot(x,y,x,ya,xa,z,xa,za)

subplot(1,2,2)
plot(x,y,x,ya,xa,z,xa,za)