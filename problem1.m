function problem1

clear all
clc
maxNum = 999;
cnt = 0;
for i = 1:maxNum
   rem1 = mod(i,3);
   rem2 = mod(i,5);
   if ~rem1 || ~rem2
       cnt = cnt+i;
   end   
end
disp(cnt)

end