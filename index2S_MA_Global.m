function S = index2S_MA_Global(i)
S(1) = rem(floor2(i,81*81*64),2);
S(2) = rem(floor2(i,81*81*32),2);
S(3) = rem(floor2(i,81*81*16),2);
S(4) = rem(floor2(i,81*81*8),2);
S(5) = rem(floor2(i,81*81*4),2);
S(6) = rem(floor2(i,81*81*2),2);
S(7) = rem(floor2(i,81*81),2);
S(8) = rem(floor2(i,81*27),3)+1;
S(9) = rem(floor2(i,81*9),3)+1;
S(10) = rem(floor2(i,81*3),3)+1;
S(11) = rem(floor2(i,81),3)+1;
S(12) = rem(floor2(i,27),3)+1;
S(13) = rem(floor2(i,9),3);
S(14) = rem(floor2(i,3),3);
S(15) = rem(floor2(i,1),3);