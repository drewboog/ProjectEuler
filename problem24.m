function problem24
clc
numList = [ 0 1 2 3 4 5 6 7 8 9 ];

% 1 million perm
num = 1000000;

for i = 1:10
    N = 11-i;
    f = factorial(N);
    fbins = f/(N); 
    newNum = floor(num/(fbins+0.0001)); % note: can't be exactly equal
    dig(i) = numList(newNum+1);
    j = 0;
    newNumList = [];
    for k = 1:N
        if dig ~= numList(k)
            j = j+1;
            newNumList(j) = numList(k);
        end
    end
    numList = [];
    num = num-newNum*fbins;
    numList = newNumList;
end
A = num2str(dig);
A = A(~isspace(A));
disp(A)

end
