% Logical operations on arrays produce logical arrays. As an example, suppose we have
% two numerical vectors x and y. The command
% >> b = x > y
% creates a logical vector b, of the same length, which contains a 1 in those positions
% where the element of x is greater than the element of y.
% Suppose we have a vector y of the same length as x. How could you determine the
% number of elements of y which are equal to the corresponding elements of x? If x =
% [0 5 -3 7 1 8 10] and y = [1 5 3 0 0 8 -2], for example, the answer should be 2.
% Given vectors x and y
clc;
close all;
clear;
x=[0 5 -3 7 1 8 10];
y=[1 5 3 0 0 8 -2];
numEqualelements = sum(x==y);
disp(numEqualelements);