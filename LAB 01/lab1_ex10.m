t= linspace(0, 2*pi, 1000);
x= 3+ 6*cos(t);
y= -2+9*sin(t);
figure;
plot(x, y, 'LineWidth', 2);
axis equal;
grid on;
xlabel('x');
ylabel('y');
title('Parametric Representation:');

legend('((x-3)^2)/36+((y+2)^2)/81=1');