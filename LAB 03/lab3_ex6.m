type = input('For seies type 1. For parallel type 2: ');
r_no = input('Give number of resistor: ');
resistance = input("Give resistance of resistor: ");
switch type
    case 1
        eq_res = r_no.*resistance;
    case 2
        eq_res = resistance/r_no;
end
disp('Equivalent resistance: ');
disp(eq_res);