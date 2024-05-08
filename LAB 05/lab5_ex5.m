% Define the circuit parameters (replace with your actual values)
R1 = 1000; % ohms
C2 = 1e-6; % farads

% Define the symbolic variable for frequency (s)
s = tf('s');

% Define the transfer function
H = -R1 / (1 + s * R1 * C2);

% Analyze the transfer function (e.g., bode plot, step response)
bode(H);