
function problem4
 
clear all
clc
 
maxDig = 999;
minDig = 900;
proMax = 0;
for i = minDig:maxDig
    for j = minDig:maxDig 
        pro = i*j;
        proStr = num2str(pro);
        palo = TestPalo(proStr);
        if palo
            proMax = max(proMax,pro);
        end
    end
end
 
disp(proMax)
 
end
 
% recursive!
function palo = TestPalo(proStr)
   
    if length(proStr)>1
        if proStr(1) == proStr(end)
            proStr2 = proStr(2:end-1);
            palo = TestPalo(proStr2);
        else
            palo = false;
            return
        end
    else
        palo = true;
        return
    end
end

end