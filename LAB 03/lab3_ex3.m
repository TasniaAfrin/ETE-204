res_mat = [[66 54 68 77 70 76 70 69 74]' [6 6 4 4 4 4 4 4 12]' [1 1 2 2 2 3 3 3 4]'];
gwam = sum(res_mat(:,1).*res_mat(:,2).*res_mat(:,3))/sum(res_mat(:,2).*res_mat(:,3));
disp(gwam)