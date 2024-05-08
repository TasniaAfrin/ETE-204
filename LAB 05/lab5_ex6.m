random_number = rand;
disp(['Random number between 0 and 1: ', num2str(random_number)]);

random_integer = randi([1, 10]);
disp(['Random integer between 1 and 10: ', num2str(random_integer)]);

random_matrix = rand(2, 3);
disp('Random matrix between 0 and 1:');
disp(random_matrix);