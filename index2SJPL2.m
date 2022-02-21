function S = index2SJPL2(i,tau)
S(1) = rem(floor2(i,7*72*8),2) + 1;
S(2) = rem(floor2(i,7*72*4),2);
S(3) = rem(floor2(i,7*72*2),2);
S(4) = rem(floor2(i,7*72),2);
S(5) = rem(floor2(i,7),72)*tau + 1;
S(6) = rem(floor2(i,1),7);

% Read comments in S2insex file first and then read comments in this file.

% State Variables = {eta, b1, b2, b3, v, z} with S(6) = z and S(1) = eta
% z = 0:6, v = 1:tau:360 (tau is interval of own choice) with my choice of
% tau, v has 72 possible values
% In order to calculate the variable values, we need offsets, intervals,
% and variable sizes. All offsets are differences between "zero" and min 
% values of the variables i.e. variables starting form "zero" have zero 
% offset, variables starting from 1 have offset equal to 1 and so on. Last 
% variable (S(6) in our case) is easiest to calculate. It is equal to
% remainder of the index with size of S(6). Floor2 function calculates the
% quotient of two variables and rounds it off to lower integer value. In
% case the quotient is integer already (i.e. the two variables are
% perfectly divisible), then 1 is subtracted from the quotient. For
% calculation of each variable, the quotient is calculated between the
% index value and the product of sizes of preceeding variables. Then the
% remainder is calculated between the quotient and the size of the variable
% to be calculated. At the end, offset is added to the remainder if needed.