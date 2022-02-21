function N = nxt_MA_Global()
% outcomes per action include goal achievment, reassignment, and area
% recategorization
n = 5; %number of agents
m = 2; %number of goals
p = 3; %number of areas (in broader sense)
N = zeros(2^n*2^m*3^p*p^n,28);
k = 1; %index
for a1 = 0:1
    for a2 = 0:1
        for a3 = 0:1
            for a4 = 0:1
                for a5 = 0:1
                    for g1 = 0:1
                        for g2 = 0:1
                            for c1 = 1:3
                                for c2 = 1:3
                                    for c3 = 1:3
                                        for c4 = 1:3
                                            for c5 = 1:3
                                                for b1 = 0:2
                                                    for b2 = 0:2
                                                        for b3 = 0:2
                                                            if a1 == 1;
                                                                N(k,1) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 1 c2 c3 c4 c5 b1 b2 b3]);
                                                                N(k,2) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 2 c2 c3 c4 c5 b1 b2 b3]);
                                                                N(k,3) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 3 c2 c3 c4 c5 b1 b2 b3]);
                                                            else
                                                                N(k,1) = k;
                                                                N(k,2) = k;
                                                                N(k,3) = k;
                                                            end
                                                            if a2 == 1;
                                                                N(k,4) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 1 c3 c4 c5 b1 b2 b3]);
                                                                N(k,5) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 2 c3 c4 c5 b1 b2 b3]);
                                                                N(k,6) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 3 c3 c4 c5 b1 b2 b3]);
                                                            else
                                                                N(k,4) = k;
                                                                N(k,5) = k;
                                                                N(k,6) = k;
                                                            end
                                                            if a3 == 1;
                                                                N(k,7) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 1 c4 c5 b1 b2 b3]);
                                                                N(k,8) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 2 c4 c5 b1 b2 b3]);
                                                                N(k,9) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 3 c4 c5 b1 b2 b3]);
                                                            else
                                                                N(k,7) = k;
                                                                N(k,8) = k;
                                                                N(k,9) = k;
                                                            end
                                                            if a4 == 1;
                                                                N(k,10) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 1 c5 b1 b2 b3]);
                                                                N(k,11) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 2 c5 b1 b2 b3]);
                                                                N(k,12) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 3 c5 b1 b2 b3]);
                                                            else
                                                                N(k,10) = k;
                                                                N(k,11) = k;
                                                                N(k,12) = k;
                                                            end
                                                            if a5 == 1;
                                                                N(k,13) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 1 b1 b2 b3]);
                                                                N(k,14) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 2 b1 b2 b3]);
                                                                N(k,15) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 3 b1 b2 b3]);
                                                            else
                                                                N(k,13) = k;
                                                                N(k,14) = k;
                                                                N(k,15) = k;
                                                            end
                                                            N(k,16) = S2index_MA_Global([0 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,17) = S2index_MA_Global([a1 0 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,18) = S2index_MA_Global([a1 a2 0 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,19) = S2index_MA_Global([a1 a2 a3 0 a5 g1 g2 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,20) = S2index_MA_Global([a1 a2 a3 a4 0 g1 g2 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,21) = S2index_MA_Global([a1 a2 a3 a4 a5 1 g2 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,22) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 1 c1 c2 c3 c4 c5 b1 b2 b3]);
                                                            N(k,23) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 1 b2 b3]);
                                                            N(k,24) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 1 b3]);
                                                            N(k,25) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 b2 1]);
                                                            N(k,26) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 2 b2 b3]);
                                                            N(k,27) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 2 b3]);
                                                            N(k,28) = S2index_MA_Global([a1 a2 a3 a4 a5 g1 g2 c1 c2 c3 c4 c5 b1 b2 2]);
                                                            k = k+1;
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end