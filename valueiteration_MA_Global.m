clc;clear all;close all;
tic
R = reward_MA_Global();
N = nxt_MA_Global();
T = TransProb_MA_Global();
V = R;
err = 1E1;
itr = 0;
P = -ones(length(R),1);
gamma = 0.99;
while (err>1E-6)
    V_old = V;
    for i = 1:length(R)
        v = [V(N(i,1)) V(N(i,2)) V(N(i,3)) V(N(i,4)) V(N(i,5)) V(N(i,6)) V(N(i,7)) V(N(i,8)) V(N(i,9)) V(N(i,10)) V(N(i,11)) V(N(i,12)) V(N(i,13)) V(N(i,14)) V(N(i,15)) V(N(i,16)) V(N(i,17)) V(N(i,18)) V(N(i,19)) V(N(i,20)) V(N(i,21)) V(N(i,22)) V(N(i,23)) V(N(i,24)) V(N(i,25)) V(N(i,26)) V(N(i,27)) V(N(i,28))];
        V(i) = vcalc_MA_Global(R(i),v,T(i,:),gamma);
    end
    err(itr+1) = max(abs(V-V_old));
    itr = itr+1
end
for j = 1:length(R)
    v = [V(N(j,1)) V(N(j,2)) V(N(j,3)) V(N(j,4)) V(N(j,5)) V(N(j,6)) V(N(j,7)) V(N(j,8)) V(N(j,9)) V(N(j,10)) V(N(j,11)) V(N(j,12)) V(N(j,13)) V(N(j,14)) V(N(j,15)) V(N(j,16)) V(N(j,17)) V(N(j,18)) V(N(j,19)) V(N(j,20)) V(N(j,21)) V(N(j,22)) V(N(j,23)) V(N(j,24)) V(N(j,25)) V(N(j,26)) V(N(j,27)) V(N(j,28))];
    P(j) = pcalc_MA_Global(R(j),v,T(j,:),gamma);
end
save('V_MA_Global','V');
save('P_MA_Global','P');
t = toc