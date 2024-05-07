clc;
clear;
close all;
a =[1 2;3 4] ;
b=[3 3;3 3];
mat_multi = a*b;
elmntwise_multi = a.*b;
disp(mat_multi)
disp(elmntwise_multi)
