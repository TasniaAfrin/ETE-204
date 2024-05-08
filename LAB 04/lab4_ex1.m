syms t a b c;
f(t) = (exp(-a.*t)).*sin(b.*t + c);
diff(f)

syms x ;   
lim_2_left = limit( 5/(x-2), x,2,'left');

disp(lim_2_left)


lim_0 = limit( 5/(x-2), x,0);
disp(lim_0);


syms x;

integral_val = int(1/(1+tan(x)),x,0, pi/2);
disp(integral_val);

syms k;
symsum_val = symsum(1/((-1)^(k-1).*(k^2)),k,1,20);
s = double(symsum_val)