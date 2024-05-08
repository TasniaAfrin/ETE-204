R1 = 5; 
R2 = 100; 
R4 = 150; 
R5 = 250; 
V1 = 100;
I_max = 0.001;


syms R3 V2 i1 i2 i3 i4 i5


eq1 = -V1 + R1.*i1 + R4.*i4 == 0;
eq2 = -R4.*i4 + R2.*i2 + R5.*i5 == 0;
eq3 = -R5.*i5 + R3.*i3 + V2 == 0;
eq4 = i1 == i2 + i4;
eq5 = i2 == i3 + i5;


[sol_V2, sol_i1, sol_i2, sol_i3, sol_i4, sol_i5] = solve([eq1, eq2, eq3, eq4, eq5], [V2, i1, i2, i3, i4, i5]);



I3_max = I_max; 
V2_min = double(subs(sol_V2, {R3, i3}, {R5, I3_max}));
V2_max = double(subs(sol_V2, {R3, i3}, {0, 0}));

fprintf('Allowable range for V2: %.4f V to %.4f V\n', V2_min, V2_max);

R3_range = 150:1:250; % kΩ
V2_range = zeros(size(R3_range));

for i = 1:length(R3_range)
    V2_range(i) = double(subs(sol_V2, {R3, i3}, {R3_range(i), 0}));
end

figure;
plot(R3_range, V2_range);
xlabel('Resistance R3 (k\Omega)');
ylabel('Allowable V2 (V)');
title('Allowable Limit on V2 as a Function of R3');
grid on;