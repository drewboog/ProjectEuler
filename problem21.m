function problem21

sumAmb =0;
for i = 2:2:10000
    dn = SumDiv(i);
    dn2 = SumDiv(dn);
    if dn2==i && dn ~= i
        sumAmb = sumAmb+dn;
        disp([i,dn])
    end
end
disp(sumAmb)
end

function dn = SumDiv(N)
    div = divisors(N);
    div = div(1:(end-1));
    dn = sum(div);
end
