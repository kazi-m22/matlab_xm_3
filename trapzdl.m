clc;clear all;close all;
f=@(x) cos(x);
a=0;
b=2*pi;
h=(b-a)/1000;
x=0:h:2*pi;
y=f(x);
iy(1)=(y(1)+y(2))*h/2;
for i=1:length(x)-2
    iy(i+1)=iy(i)+(y(i+1)+4*y(i+2))*(h/2);
end
subplot(2,1,1)
plot(x,y)
subplot(2,1,2)
plot(x(1:length(x)-1),iy)