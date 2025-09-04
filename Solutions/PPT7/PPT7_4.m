options=odeset('RelTol',1e-4,'AbsTol',1e-4);
[t,y]=ode23(@func,[0,10],1,options);
[t1,y1]=ode45(@func,[0,10],1,options); %取点更密
plot(t,y(:,1),'rp','DisplayName','ode23');
hold on
plot(t1,y1(:,1),'bo','DisplayName','ode45')
legend
grid on

function f=func(x,~)
f=x+2*x^2+3*x^3;
end