function problem16

format long g
a = sym(2);
b = sym(1000);
expNum = vpa(a^b,305);
strNum = char(expNum);
N = length(char(strNum));
numsum = 0;
for i = 1:(N-2)
    numsum =numsum+str2num(strNum(i));
end
disp(numsum)

end
