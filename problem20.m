function problem20

factNum = vpa(factorial(sym(100)),200);

strNum = char(factNum);
N = length(char(strNum));
numsum = 0;
for i = 1:(N-2)
    numsum =numsum+str2num(strNum(i));
end
disp(numsum)
end
