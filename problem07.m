function problem7
 
clear all
clc
N = 10001;
%N = 6;
cnt = 0;
i = 1;
while 1
   i = i+1;
   fac = max(factor(i));
   if i == fac
    cnt = cnt+1;
    if cnt == N
        disp(i);
        break;
    end
   end
end
end