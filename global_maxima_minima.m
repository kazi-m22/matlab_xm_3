clc
clear all
h=.001;
x=0:h:4;
f=@(x) 5*cos(10*x)+x.^3-2*x.^2-6*x+10;
for i=2:length(x)
    dy(i-1)=(f(x(i))-f(x(i-1)))/(h);
end
xd=x(2:length(x));




for i=2:length(dy)
    dy2(i-1)=(dy(i)-dy(i-1))/(h);
end
xd2 = xd(2:length(xd));

mm = [];
for k = 2:length(xd)-2
    if(dy(k)*dy(k+1)) <0
        mm = [mm (xd(k) + xd(k+1))/2];
        end
    end
mm

ys = f(mm);
maxy = max(ys);
miny = min(ys);
a = find(ys==max(ys))
b = find(ys==min(ys))
plot(x,f(x));
hold on;
plot(mm(a),maxy,'o');
plot(mm(b),miny,'o');
text(mm(a),maxy,'maxima');
text(mm(b),miny,'minima');


    
