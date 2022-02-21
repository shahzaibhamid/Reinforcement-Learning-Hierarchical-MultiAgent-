clc;clear all;close all;
tic
R = reward_MA_Local();
N = nxt_MA_Local();
T = TransProb_MA_Local();
V = R;
err = 1E1;
itr = 0;
P = -ones(length(R),1);
gamma = 0.95;
while (err>1E-6)
    V_old = V;
    for i = 1:length(R)
         v = [V(N(i,1)) V(N(i,2)) V(N(i,3)) V(N(i,4)) V(N(i,5)) V(N(i,6)) V(N(i,7)) V(N(i,8)) V(N(i,9)) V(N(i,10)) V(N(i,11)) V(N(i,12)) V(N(i,13)) V(N(i,14)) V(N(i,15)) V(N(i,16))];
         V(i) = vcalc_MA_Local(R(i),v,T(i,:),gamma);
    end
    err = max(abs(V-V_old))
    itr = itr+1
end
for j = 1:length(R)
    v = [V(N(j,1)) V(N(j,2)) V(N(j,3)) V(N(j,4)) V(N(j,5)) V(N(j,6)) V(N(j,7)) V(N(j,8)) V(N(j,9)) V(N(j,10)) V(N(j,11)) V(N(j,12)) V(N(j,13)) V(N(j,14)) V(N(j,15)) V(N(j,16))];
    P(j) = pcalc_MA_Local(R(j),v,T(j,:),gamma);
end
save('V_MA_Local4','V');
save('P_MA_Local4','P');
t = toc