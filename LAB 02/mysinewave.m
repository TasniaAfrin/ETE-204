clc;
clear;
close all;
help linspace
x =linspace(0,5*pi,1024);
y=sin(x);
plot(x,y)
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
disp(length(y))