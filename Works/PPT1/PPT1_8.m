theta=0:0.01:2*pi;
rho1=theta;
rho2=exp(theta);
subplot(1,2,1);polar(theta,rho1,'r')
subplot(1,2,2);polar(theta,rho2,'b')
grid on;