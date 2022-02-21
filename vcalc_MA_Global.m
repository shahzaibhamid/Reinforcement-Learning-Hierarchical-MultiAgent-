function V = vcalc_MA_Global(R,v,T,gamma)
u = zeros(16,1);
k = 1;
for i = 1:15
    u(k) = R + gamma*(v(i)*T(i));
    k = k+1;
end
u(16) = R + gamma*sum(v(16:28).*T(16:28));
V = max(u);