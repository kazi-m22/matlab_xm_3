clc
clear all
h=.001;
t=0:h:10;
y(1)=0;
x(1)=0;
f1=@(t,x,y) (-3/5)*x+(6/5)*y+exp(t);
f2=@(x) x;
for i=2:length(t)
   x(i)=x(i-1)+h*f1(t(i-1),x(i-1),y(i-1));
   y(i)=y(i-1)+h*f2(x(i-1));
end
plot(t,y)