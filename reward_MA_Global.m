function R = reward_MA_Global()
n = 5; %number of agents
m = 2; %number of goals
p = 3; %number of areas (in broader sense)
R = zeros(2^n*2^m*3^p*p^n,1);
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
                                                            ab1 = (c1==1) + (c2==1) + (c3==1) + (c4==1) + (c5==1);
                                                            ab2 = (c1==2) + (c2==2) + (c3==2) + (c4==2) + (c5==2);
                                                            ab3 = (c1==3) + (c2==3) + (c3==3) + (c4==3) + (c5==3);
                                                            ab4 = (c1==2) + (c2==2) + (c3==2) + (c4==2) + (c5==2);
                                                            ab5 = (c1==3) + (c2==3) + (c3==3) + (c4==3) + (c5==3);
                                                            R(k) = 50*exp((g1==1)+(g2==1)) + 100*exp((ab1<=2) + (ab2<=2) + (ab3<=2)+(ab4<=2)+(ab5<=2)) + 50*exp(-((ab1>1 && b1==2)+(ab2>1 && b2==2)+(ab3>1 && b3==2)));
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
                                                           