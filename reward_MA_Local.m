function R = reward_MA_Local()
% Partition Status PS
% Battery  B
% Companion Status CS
% Partition of current position CP 
% Block of current location  Bloc
% Block classification BC
% Goal g1,g2
R = zeros(2^1*3^1*3^1*2^1*7^1*3^7*2^2,1);
k = 1; %index
for PS = 0:2
    for CP = 1:3
        for g1 = 0:1
            for g2 = 0:1
                for B = 0:2
                    for CS = 1:3 % companion may be present in p1 or p2 or absent (only three possibilities)
                        for Bloc = 1:7
                            for BC1 = 1:3
                                for BC2 = 1:3
                                    for BC3 = 1:3
                                        for BC4 = 1:3
                                            for BC5 = 1:3
                                                for BC6 = 1:3
                                                    for BC7 = 1:3
                                                        r1 = (BC1>1)+(BC2>1)+(BC3>1)+(BC4>1)+(BC5>1)+(BC6>1)+(BC7>1)+(60*PS);
                                                        r2 = (CP~=CS);
                                                        r3 = B;
                                                        r4 = ((Bloc==1)&&(BC1~=3))||((Bloc==2)&&(BC2~=3))||((Bloc==3)&&(BC3~=3))||((Bloc==4)&&(BC4~=3))||((Bloc==5)&&(BC5~=3))||((Bloc==6)&&(BC6~=3))||((Bloc==7)&&(BC7~=3));
                                                        R(k) = 100*r1+100*r2+1000*r3+400*r4;
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