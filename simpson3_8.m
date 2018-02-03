clc;
clear all;

f = inline('sin(2*pi*x)');
a = 0;
b = pi;
n = 1000;
h = (b-a)/n;

sum = f(a)+f(b);
for i=1:n-2
    if mod(i,3) ==0
        sum = sum+2*f(a+i*h);
    else
        sum = sum + 3*f(a+i*h);
    end
end
sum = sum *((3*h)/8);
disp(sum)