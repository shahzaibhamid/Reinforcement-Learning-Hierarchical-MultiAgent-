function f = floor2(i,j)
f = floor(i/j);
if rem(i,j)==0
    f = f - 1;
end