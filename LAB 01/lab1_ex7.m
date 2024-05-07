clc;
clear;
close all;
t= 0:0.05:5.0;
x_t = exp(-.8*t);
y_t = cos(8*t);
z_t = 10*x_t.*y_t;
title('An exponentially decaying  sinusoid');
xlabel('Time');
ylabel('Value of z');
ylim([-12 12]);
grid on;
subplot(3,1,1);
plot(t, x_t);
subplot(3,1,2);
plot(t, y_t);
subplot(3,1,3);
plot(t, z_t);