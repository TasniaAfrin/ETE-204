clc;
clear;
close all;
x=linspace(0,2*pi,25);
y=sin(x);
subplot(2,1,1);
plot(x,y,'r');
title('Continuous');
subplot(2,1,2);
stem(x,y);
title('Discrete');
%given labtask is same. y=cos(x), (0,2*pi,50)