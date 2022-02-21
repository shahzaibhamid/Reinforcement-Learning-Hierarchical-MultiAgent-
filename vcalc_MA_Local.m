function V = vcalc_MA_Local(R,v,T,gamma)%no change required
u = zeros(5,1);
k = 1;
for i = 1:2:8
    u(k) = R + gamma*(v(i)*T(i) + v(i+1)*T(i+1));
    k = k+1;
end
u(5) = R + gamma*sum(v(9:16).*T(9:16));
V = max(u);