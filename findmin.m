function n = findmin(v)
n = 0;
m = min(v);
for i = 1:length(v)
    if v(i)==m;
        n = i;
        return;
    end
end