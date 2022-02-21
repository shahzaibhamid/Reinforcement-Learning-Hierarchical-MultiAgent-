function N = nxt_MA_Local()
% Partition Status PS
% Battery  B
% Companion Status CS
% Partition of current position CP 
% Block of current location  Bloc
% Block classification BC
% Goal g1,g2
% actions: left, right, up, down
N = zeros(2^1*3^1*3^1*2^1*7^1*3^7*2^2,16);
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
                                                        expl = ((BC1>1) && (BC2>1) && (BC3>1) && (BC4>1) && (BC5>1) && (BC6>1) && (BC7>1));
                                                        if CP==1
                                                            if Bloc==1
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 2 1 1 1 1 1 1]);
                                                                    N(k,4) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 3 1 1 1 1 1 1]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 2 1 1 1 1 1 1]);
                                                                    N(k,4) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 3 1 1 1 1 1 1]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                           
                                                            elseif Bloc==2
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                            elseif Bloc==3
                                                               if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 1 1 2 1 1 1 1]);
                                                                    N(k,4) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 1 1 3 1 1 1 1]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                               else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 1 1 2 1 1 1 1]);
                                                                    N(k,4) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 1 1 3 1 1 1 1]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                            elseif Bloc==4
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                            elseif Bloc==5
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 1 1 1 1 2 1 1]);
                                                                    N(k,4) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 1 1 1 1 3 1 1]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 1 1 1 1 2 1 1]);
                                                                    N(k,4) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 1 1 1 1 3 1 1]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                            elseif Bloc==6
                                                                 if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                 else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                            elseif Bloc==7
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,3) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 1 1 1 1 1 1 2]);
                                                                    N(k,4) = S2index_MA_Local([1 2 g1 g2 B CS Bloc 1 1 1 1 1 1 3]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 1 1 1 1 1 1 2]);
                                                                    N(k,4) = S2index_MA_Local([PS 2 g1 g2 B CS Bloc 1 1 1 1 1 1 3]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                end
                                                                N(k,9) = k;
                                                            end
                                                          
                                                         elseif CP==2
                                                            if Bloc==1
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 2 1 1 1 1 1 1]);
                                                                    N(k,2) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 3 1 1 1 1 1 1]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS 1 g1 g2 B CS Bloc 2 1 1 1 1 1 1]);
                                                                    N(k,2) = S2index_MA_Local([PS 1 g1 g2 B CS Bloc 3 1 1 1 1 1 1]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS Bloc 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                        elseif Bloc==2
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC2 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC2 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                        
                                                        elseif Bloc==3
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 1 1 2 1 1 1 1]);
                                                                    N(k,2) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 1 1 3 1 1 1 1]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS 1 g1 g2 B CS Bloc 1 1 2 1 1 1 1]);
                                                                    N(k,2) = S2index_MA_Local([PS 1 g1 g2 B CS Bloc 1 1 3 1 1 1 1]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 1 2 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 1 3 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                         elseif Bloc==4
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 2 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 2 BC1 3 BC3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                end
                                                                N(k,9) = k;
                                                            
                                                         elseif Bloc==5
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 1 1 1 1 2 1 1]);
                                                                    N(k,2) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 1 1 1 1 3 1 1]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS 1 g1 g2 B CS Bloc 1 1 1 1 2 1 1]);
                                                                    N(k,2) = S2index_MA_Local([PS 1 g1 g2 B CS Bloc 1 1 1 1 3 1 1]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 2 BC4 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 3 BC1 BC2 3 BC4 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                end
                                                                N(k,9) = k;
                                                           
                                                          elseif Bloc==6
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 2 BC6 BC7]);
                                                                    N(k,2) = S2index_MA_Local([PS CP g1 g2 B CS 5 BC1 BC2 BC3 BC4 3 BC6 BC7]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 2 BC5 BC6 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 4 BC1 BC2 BC3 3 BC5 BC6 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS 7 BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                end
                                                                N(k,9) = k;
                                                                
                                                         elseif Bloc==7
                                                                if expl==1;
                                                                    N(k,1) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 1 1 1 1 1 1 2]);
                                                                    N(k,2) = S2index_MA_Local([1 1 g1 g2 B CS Bloc 1 1 1 1 1 1 3]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                else
                                                                    N(k,1) = S2index_MA_Local([PS 1 g1 g2 B CS 5 1 1 1 1 1 1 2]);
                                                                    N(k,2) = S2index_MA_Local([PS 1 g1 g2 B CS 5 1 1 1 1 1 1 3]);
                                                                    N(k,3) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,4) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                    N(k,5) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 2 BC7]);
                                                                    N(k,6) = S2index_MA_Local([PS CP g1 g2 B CS 6 BC1 BC2 BC3 BC4 BC5 3 BC7]);
                                                                    N(k,7) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 2]);
                                                                    N(k,8) = S2index_MA_Local([PS CP g1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 3]);
                                                                end
                                                                N(k,9) = k;
                                                            end
                                                        end
                                                        N(k,10) = S2index_MA_Local([PS CP 1 g2 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                        N(k,11) = S2index_MA_Local([PS CP g1 1 B CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                        N(k,12) = S2index_MA_Local([PS CP g1 g2 1 CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                        N(k,13) = S2index_MA_Local([PS CP g1 g2 0 CS Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                        N(k,14) = S2index_MA_Local([PS CP g1 g2 B 0 Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                        N(k,15) = S2index_MA_Local([PS CP g1 g2 B 1 Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
                                                        N(k,16) = S2index_MA_Local([PS CP g1 g2 B 2 Bloc BC1 BC2 BC3 BC4 BC5 BC6 BC7]);
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