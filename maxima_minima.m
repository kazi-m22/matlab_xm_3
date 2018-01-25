clc;
clear all;

h = .01;
x = -3:h:1;
f = inline('x.^3+3*x.^2+2');
y = f(x);

for i = 2:length(x)-2
    dy(i) = (y(i+1)-y(i-1))/h;
end;

xd = (x(2:length(x)-2));
mm=  [];

for k = 2:length(xd) - 2
    if(dy(k))*dy(k+1) <0
        mm = [mm (xd(k) + xd(k+1))/2];
    end
end

plot(x,y);
hold on;
plot(mm, f(mm), 'o');
