function problem2

clear all
clc
maxNum = 4000000;
cnt = 0;
ter1 = 1;
ter2 = 2;
while ter2 < maxNum
    rem1 = mod(ter2,2);
    if ~rem1
       cnt = cnt + ter2;
    end
   
    tempTer2 = ter2;
    ter2 = ter1+ter2;
    ter1 = tempTer2; 
end
disp(cnt)

end