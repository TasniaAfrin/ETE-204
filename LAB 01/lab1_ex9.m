clc;
clear;
close all;
x= rand(1,10);
ans1 = x(x>=0.5);
ans2 = x(x>=0.4 & x<=0.6);
disp(x);
disp(ans1);
disp(ans2);