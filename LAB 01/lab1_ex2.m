clc;
clear;
close all;
E = 100+10j;
IL = 5+5j;
Z_mag= 2;
Z_phase_deg= 40;
Z_phase_rad= deg2rad(Z_phase_deg);
Z = Z_mag*exp(1i*Z_phase_rad);
Vs = E + Z*IL;
disp(abs(Vs))
disp(rad2deg(angle(Vs)));