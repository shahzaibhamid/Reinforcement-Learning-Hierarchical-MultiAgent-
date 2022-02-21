function [EV Traj] = PolEval_MA_Local(P,ic)
gamma = 0.95;
R = reward_MA_Local();
N = nxt_MA_Local();
T = TransProb_MA_Local();
Traj = zeros(30,14);
i3 = S2index_MA_Local(ic) % i3 is current state, i2 is initial state
pt = 1;
EV = R(i3);
Traj(1,:) = index2S_MA_Local(i3);
for y = 1:29 % because total 30 time steps
    a = P(i3);
    i3 = N(i3,2*a-1);%update!!!
    p = T(i3,2*a-1);%update!!!
    pt = pt*p;
    EV = (R(i3)*pt)*gamma^(y) + EV;
    Traj(y+1,:) = index2S_MA_Local(i3);
end