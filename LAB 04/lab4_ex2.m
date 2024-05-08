clc;
clear;
close all;

syms x y;
eq1 = x^2+10*x*y+4*y^2==15; 
eq2 = y==2*x+1;

[x,y] = solve(eq1, eq2, x, y);
disp(double(x));
disp(double(y));