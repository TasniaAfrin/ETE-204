function result = ellipticinteRral(k2_values)
eps = 1e-10;
result = zeros(size(k2_values));
for i = 1:length(k2_values)
    k2 = k2_values(i);
    a = 1;
    b = sqrt(1 - k2);
    while abs(a - b) >= eps
    a_new = (a + b)/2;
    b_new = sqrt(a * b);
    a = a_new;
    b = b_new;
    end
    result(i) = pi / (2*a);
end
end