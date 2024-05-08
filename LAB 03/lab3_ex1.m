disp('T4.5-3')
A = zeros(4,3);
for i = 1:4
    for j = 1:3
        A(i,j) = 4+6*(i-1)+4*(j-1);
    end
end
disp(A);

disp('T4.6-2')
k = 1;
while k <= 10
    x = 50 - k^2;
    if x < 0
        k = 11;
    else
        y = sqrt(x);
        disp(y);
        k = k+1;
    end
end

disp('T4.7–1')
angle = input('Enter the angle(45,-45,135, or -135): ');
switch angle
    case 45
        disp('The angle is in Quardent 1');
    case -45
        disp('The angle is in Quardent 4');
    case 135
        disp('The angle is in Quardent 2');
    case -135
        disp('The angle is in Quardent 3');
    otherwise
        disp('Invalid angle entered. Please enter 45, -45, 135, 0r -135');
end

