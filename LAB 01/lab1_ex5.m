clc;
clear;
close all;
A= [1 0 3; 8 2 -5; -1 5 3];
b= [10; -3; 18];
x= inv(A)*b;  %or A\b
disp(x);
