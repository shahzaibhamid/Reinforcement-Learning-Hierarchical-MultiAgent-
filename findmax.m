function n = findmax(v)
n = 0;
m = max(v);
for i = 1:length(v)
    if v(i)==m;
        n = i;
        return;
    end
end