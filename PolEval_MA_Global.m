function [EV Traj] = PolEval_MA_Global(P,ic)
gamma = 0.99;z = 9;
R = reward_MA_Global();
N = nxt_MA_Global();
T = TransProb_MA_Global();
Traj = zeros(z,15);
i3 = S2index_MA_Global(ic) % i3 is current state, i2 is initial state
pt = 1;p = 1;
EV(1) = R(i3);
Traj(1,:) = index2S_MA_Global(i3);
for y = 1:z % because total 30 time steps
    a = P(i3);
    if a<16
        i3 = N(i3,a);%update!!!
        p = T(i3,a);%update!!!
    end
    pt = pt*p;
    EV(y+1) = (R(i3)*pt)*gamma^(y) + EV(y);
    Traj(y+1,:) = index2S_MA_Global(i3);
end