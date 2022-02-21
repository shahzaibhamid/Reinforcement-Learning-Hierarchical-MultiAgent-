function [b,p] = nextblock(bloc,cp)
if cp==1
    if bloc==1
        b = [1 1 1 2];
        p = [1 2 1 1];
    elseif bloc==2
        b = [2 3 1 4];
        p = [1 1 1 1];
    elseif bloc==3
        b = [2 3 1 5];
        p = [1 2 1 1];
    elseif bloc==4
        b = [4 5 2 6];
        p = [1 1 1 1];
    elseif bloc==5
        b = [4 5 3 7];
        p = [1 2 1 1];
    elseif bloc==6
        b = [6 7 4 6];
        p = [1 1 1 1];
    elseif bloc==7
        b = [6 7 5 7];
        p = [1 2 1 1];
    end
elseif cp==2
    if bloc==1
        b = [1 2 1 3];
        p = [1 2 2 2];
    elseif bloc==2
        b = [1 2 2 4];
        p = [2 2 2 2];
    elseif bloc==3
        b = [3 4 1 5];
        p = [1 2 2 2];
    elseif bloc==4
        b = [3 4 2 6];
        p = [2 2 2 2];
    elseif bloc==5
        b = [5 6 3 7];
        p = [1 2 2 2];
    elseif bloc==6
        b = [5 6 4 7];
        p = [2 2 2 2];
    elseif bloc==7
        b = [7 7 6 7];
        p = [1 2 2 2];
    end
end