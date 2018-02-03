clc;
clear all;

f = '5*D2y + 3*Dy-6*y=exp(t)';
ic = 'y(0)=0,Dy(0)=0';

d = dsolve(f,ic);
fd = matlabFunction(d);

t = [0:.01:10];
plot(t,fd(t));
