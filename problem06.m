function problem6
 
clear all
clc
 
N = 100;
sumSq = 0;
sumNum = 0;
for i = 1:N
    sumSq = sumSq + i*i;
    sumNum = sumNum+i;
end
sumNumSq = sumNum*sumNum;
sumDiff = sumNumSq-sumSq;
disp(sumDiff)
 
end