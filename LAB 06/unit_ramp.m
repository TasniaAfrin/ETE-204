n1=input('Enter lower limit');
n2=input('Enter upper limit');
n=n1:n2;
x=n.*n>=0;
subplot(2,1,1);
plot(n,x,'r');
title('Continuous');
subplot(2,1,2);
stem(n,x,'b');
title('Discrete');
% n= -10 to 10