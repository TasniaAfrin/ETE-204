syms e(t) v(t) x(t)
eqn1 = diff(e, t) == x - e/100;
eqn2 = diff(v, t) == e/200 - v/10;
eqn3 = diff(x, t) == e - 2*v;

cond1 = e(0) == 5;
cond2 = v(0) == 0;
cond3 = x(0) == 0;

[sol_e, sol_v, sol_x] = dsolve([eqn1, eqn2, eqn3], [cond1, cond2, cond3]);

sol_e_simplified = vpa(simplify(sol_e));
sol_v_simplified = vpa(simplify(sol_v));
sol_x_simplified = vpa(simplify(sol_x));

disp('Solution for e(t):')
pretty(sol_e_simplified)

disp('Solution for v(t):')
pretty(sol_v_simplified)

disp('Solution for x(t):')
pretty(sol_x_simplified)

% Plotting the results
fplot([sol_e_simplified, sol_v_simplified, sol_x_simplified], [0, 10])
legend('e(t)','v(t)','x(t)');