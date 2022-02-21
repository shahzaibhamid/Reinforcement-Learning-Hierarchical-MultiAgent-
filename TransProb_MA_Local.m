function T = TransProb_MA_Local()
% Partition Status PS
% Battery  B
% Companion Status CS
% Partition of current position CP 
% Block of current location  Bloc
% Block classification BC
% Goal g1,g2
T = zeros(2^1*3^1*3^1*2^1*7^1*3^7*2^2,16);
k = 1; %index
for PS = 0:1
    for CP = 1:2
        for g1 = 0:1
            for g2 = 0:1
                for B = 0:2
                    for CS = 0:2
                        for Bloc = 1:7
                            for BC1 = 1:3
                                for BC2 = 1:3
                                    for BC3 = 1:3
                                        for BC4 = 1:3
                                            for BC5 = 1:3
                                                for BC6 = 1:3
                                                    for BC7 = 1:3
                                                        BL = [BC1 BC2 BC3 BC4 BC5 BC6 BC7];
                                                        Info = (BC1>1) + (BC2>1) + (BC3>1) + (BC4>1) + (BC5>1) + (BC6>1) + (BC7>1) + 7*(CP==1);
                                                        % create a small function nxtblock(Bloc,CP) that returns next block for each of the four actions 
                                                        % probability of goal variable shall depend upon info variable
                                                        [b,p] = nextblock(Bloc,CP);
                                                        T(k,1) = 0.5*(BL(b(1))==1) + (BL(b(1))==2)*(CP==p(1)) + 0.5*(BL(b(1))==2)*(CP~=p(1));
                                                        T(k,2) = 0.5*(BL(b(1))==1) + (BL(b(1))==3)*(CP==p(1)) + 0.5*(BL(b(1))==3)*(CP~=p(1));
                                                        T(k,3) = 0.5*(BL(b(2))==1) + (BL(b(2))==2)*(CP==p(2)) + 0.5*(BL(b(2))==2)*(CP~=p(2));
                                                        T(k,4) = 0.5*(BL(b(2))==1) + (BL(b(2))==3)*(CP==p(2)) + 0.5*(BL(b(2))==3)*(CP~=p(2));
                                                        T(k,5) = 0.5*(BL(b(3))==1) + (BL(b(3))==2)*(CP==p(3)) + 0.5*(BL(b(3))==2)*(CP~=p(3));
                                                        T(k,6) = 0.5*(BL(b(3))==1) + (BL(b(3))==3)*(CP==p(3)) + 0.5*(BL(b(3))==3)*(CP~=p(3));
                                                        T(k,7) = 0.5*(BL(b(4))==1) + (BL(b(4))==2)*(CP==p(4)) + 0.5*(BL(b(4))==2)*(CP~=p(4));
                                                        T(k,8) = 0.5*(BL(b(4))==1) + (BL(b(4))==3)*(CP==p(4)) + 0.5*(BL(b(4))==3)*(CP~=p(4));
                                                        T(k,10) = Info/14*(g1==0);
                                                        T(k,11) = (BC3>1)*(PS==1)*(g2==0);
                                                        T(k,12) = (B==2)*0.1;
                                                        T(k,13) = (B==1)*0.05;
                                                        T(k,14) = (CS==0)*0.3 + 0.2*(CS>0);
                                                        T(k,15) = (CP==2)*(CS==2) + 0.5*(CS==0);
                                                        T(k,16) = (CP==1)*(CS==1) + 0.5*(CS==0);
                                                        alpha = sum(T(k,10:16));
                                                        beta = 0.95; % probability of something happening
                                                        if alpha==0
                                                            beta = 0;
                                                        else
                                                            T(k,10:16) = T(k,10:16)/alpha*beta;
                                                        end
                                                        T(k,9) = 1-beta; % probability of nothing happening
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