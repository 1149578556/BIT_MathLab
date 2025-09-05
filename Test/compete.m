function dx=compete(~,x)
    dx=zeros(2,1);
    dx(1)=x(1)*x(2)^2+x(2)*sin(x(1));
    dx(2)=x(2)*x(1)^2+x(1)*cos(x(2));