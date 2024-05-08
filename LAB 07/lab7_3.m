clear;
clc;
close all;

% Sampling and Time Parameters
Ts = 0.001; % Sampling period (small for continuous approximation)
Tp = 1;      % Time period of the signal
tau = 0.5;   % Pulse width (duty cycle)

% Generate Time Vector (slightly adjusted for full period)
t = -Tp/2:Ts:Tp/2;  % Ensures full period for accurate CTFT coefficients

% Generate Square Wave with Improved Duty Cycle Calculation
x = pulstran(t, 2*pi/Tp, tau/(Tp/2));  % Use pulstran for accurate pulse generation
                                     % Adjust duty cycle calculation for pulstran

% Plot Square Wave
figure;
plot(t, x);
xlabel('secs');
ylim([-1.2 1.2]);
pause;
% Calculate Fundamental Frequency
Fo = 1/Tp;

% Extract One Period of the Signal (using vector indexing)
xport = x(t >= -Tp/2 & t <= Tp/2);  % Efficient period extraction

% Compute CTFS Coefficients
C = zeros(1, 20);  % Pre-allocate for efficiency
for k = 1:20
    B = exp(-1i*2*pi*(k-1)*Fo*t);  % Corrected calculation of B (no scaling)
    C(k) = sum(xport .* B)/ Tp;   % Normalized coefficient calculation
end

% Frequency Scale
kFo = Fo * (0:k-1);

% Plot CTFT Coefficients Magnitude
figure;
stem(kFo, abs(C));
title('CTFT Coefficients Magnitude');
xlabel('Hz');