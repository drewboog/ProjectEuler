function problem10
% slow!! 
clear all
clc
 
%N = 10;
N = 2000000;
sumFac = 2;
j = 0;
for i = 3:2:N
    fac = max(factor(i));
    if i == fac
       sumFac = sumFac+fac;
    end
    if i>j*100000
       disp(i)
       j = j+1;
    end
end
disp(sumFac)
 
end