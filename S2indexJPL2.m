function i = S2indexJPL2(S,tau)
i = S(6)+1 + 7*((S(5)-1)/tau) + 72*7*S(4) + 72*7*2*S(3) + 72*7*4*S(2) + 72*7*8*(S(1)-1);


% State Variables = {eta, b1, b2, b3, v, z} with S(6) = z and S(1) = eta
% z = 0:6, v = 1:tau:360 (tau is interval of own choice) with my choice of
% tau, v has 72 possible values
% To calculate index, we need offset and interval for each state variable,
% offset for last state variable is difference between min value of that
% variable and "one" whereas offsets for all other state variables are
% differences between their respective min values and "zero". In above
% case, S(6) is the last variable and it starts from 0 hence offset is
% 1 - 0 = 1. S(5) starts from 1 so its offset is 0 - 1 = -1. Next three
% variables start from zero, hence no offset. S(1) starts with 1 hence
% offset = 0 - 1 = -1. Interval is the difference between two consecutive
% values of a variable. In our case, five variables have unit interval
% whereas S(5) has interval "tau" therefore, tau needs to divide the value
% of S(5) plus its offset in order to get correct index. Finally, all variable values are
% multiplied by product of sizes of preceeding variables e.g. S(5) is 
% multiplied by size of S(6), S(4) is multiplied by product of sizes of
% S(5) and S(6) and so on.....