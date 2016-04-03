function problem5
 
clear all
clc
 
i = 0;
testArry = [11,12,13,14,15,16,17,18,19,20];
%testArry = [6,7,8,9,10];
maxDiv = max(testArry);
while 1
    i = i+maxDiv;
    sumComp = 0;
    for j = testArry
        if ~mod(i,j)
            sumComp = sumComp +1;
        else
            break;
        end
    end
 
    if sumComp == length(testArry)
        disp(i);
        break;
    end
end
end