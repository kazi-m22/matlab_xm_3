clc;
clear all;

f = inline('x.^2-3*3+9');
a = 1;
b = 10;
n = 200;
h = (b-a)/n;
sum = f(a)+f(b);
y = [];
for i = 1:n-1
    if mod(i,2) == 1
        sum = sum + 2*f(a+i*h);
    else
        sum = sum + 4*f(a+i*h);
    end 
    y = [y sum];
end
sum = sum*(h/3);
