%%
Fun = @(x) exp(-x).*sin(3*x); 
dFun = @(x) -exp(-x).*sin(3*x)+ 3*exp(-x).*cos(3*x);
%%
x=linspace(0,4,101);
F=Fun(x);
h=x(2)-x(1);
xCentral=x(2:end-1);
dFCenteral=(F(3:end)-F(1:end-2))/(2*h);
xForward=x(1:end-1);
dFForward=(F(2:end)-F(1:end-1))/h;
xBackward=x(2:end);
dFBackward=(F(2:end)-F(1:end-1))/h;
%%

plot(xCentral,dFCenteral,'r')
hold on;
plot(xForward,dFForward,'k');
plot(xBackward,dFBackward,'g');
legend('Central','Forward','Backward')