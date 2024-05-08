omega = logspace(-1, 3, 1000); 

R = 1; 
C = 1; 

G_freq_response = 1 ./ sqrt(1 + (R*C*omega).^2);

figure;
semilogx(omega, 20*log10(G_freq_response)); 
title('Frequency Response of Low-Pass Filter');
xlabel('\omega (rad/s)');
ylabel('|G(j\omega)| (dB)');
grid on;

cutoff_frequency = 1/(R*C); 
disp(['Cutoff Frequency: ', num2str(cutoff_frequency),' rad/s']);