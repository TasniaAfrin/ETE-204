syms f(x) g(x)
eq1 = diff(f(x),x) + 1.5*f(x) - g(x) == 0;
eq2 = diff(g(x),x) + f(x) - 2*g(x) == 0;
conds = [f(0) == 0, g(0) == 2];

% Solve the system of differential equations
soln = dsolve([eq1, eq2], conds);
fs = soln.f;
gs = soln.g;
fs = simplify(fs);
gs = simplify(gs);
disp('f(x) = ');
pretty(fs)
disp('g(x) = ');
pretty(gs)

%To Convert solutions to numerical functions using vpa
% f_numeric = vpa(f_soln, 5);   %5 decimal places
% g_numeric = vpa(g_soln, 5);   % 5 decimal places

% Simplify the solutions
%digits(10)
% f_numeric = simplify(f_numeric);
% g_numeric = simplify(g_numeric);

% Display the solutions
% disp('Solution for f(x):');
% disp(f_numeric);
% disp('Solution for g(x):');
% disp(g_numeric);
