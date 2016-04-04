function problem15
clc
clear all;
list = [1, 1, 1];
newList = [1, 1, 1];
size = 20;

size = size + 1;
for i = 1:size * 2
j = 0;
newList = [];
numSt = [];

N = length(list(:, 1));
for k = 1:N(1)
l1 = list(k, 1);
l2 = list(k, 2);
num = list(k, 3);

if l1 < size
    j = j + 1;
newList(j, 1:3) = [l1 + 1, l2, num];
numId = 10000 + (l1 + 1) * 100 + l2;
numSt(j) = numId;
end
if l2 < size
    j = j + 1;
newList(j, 1:3) = [l1, l2 + 1, num];
numId = 10000 + (l1)* 100 + l2 + 1;
numSt(j) = numId;
end
end
newList2 = [];
vals = unique(numSt);
numV = length(vals);
for m = 1:numV
fnd = find(numSt == vals(m));
%lenFnd = length(fnd);
lenFnd = sum(newList(fnd, 3));
N = fnd(1);
newList2(m, 1:3) = newList(N, 1:3);
newList2(m, 3) = lenFnd;
end

list = newList2;
if m == 1
break;
end
end

disp(list(:, 3))

end
