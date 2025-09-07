mu1 = randi([10, 20]);
mu2 = randi([10, 20]);
sigma1 = randi([1,5]);
sigma2 = randi([1,5]);
x=0:0.01:30;
y1=normpdf(x,mu1,sigma1);
y2=normpdf(x,mu2,sigma2);
plot(x,y1,'r',x,y2,'g')
legend(['\mu=' num2str(mu1) ', \sigma=' num2str(sigma1)], ['\mu=' num2str(mu2) ', \sigma=' num2str(sigma2)])
grid on

%2s
PX=1-normcdf(5,mu1,sigma1);
PY=normcdf(4,mu2,sigma2);
disp(['P(X>5) = ' num2str(PX)])
disp(['P(Y<4) = ' num2str(PY)])
if PX>PY
    disp('P(X>5)>P(Y<4)')
elseif PX<PY
    disp('P(X>5)<P(Y<4)')
else
    disp('P(X>5)=P(Y<4)')
end

%3
syms x y;
vpasolve(normcdf(x,mu1,sigma1)==0.1,normcdf(y,mu2,sigma2)==0.1,[x,y])