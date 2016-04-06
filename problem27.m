function problem27
clc
maxcnt = 0;
valsign = [1,1;-1,1;1,-1;-1,-1];
for a = 1:1000
    for b = 1:1000
        valcnt(1:4) = [0,0,0,0];
        for n = 1:500
            prime = false;
            val(1) = n*n + a*n + b;
            val(2) = n*n - a*n + b;
            val(3) = n*n + a*n - b;
            val(4) = n*n - a*n - b;
            
            for i = 1:4
                if valcnt(i)>-1 && val(i) > 0
                    lenval = length(factor(val(i)));
                    if lenval == 1
                        valcnt(i) = valcnt(i)+1;
                        maxcnt = max(maxcnt,valcnt(i));
                        if maxcnt == valcnt(i)
                           disp([maxcnt,a,b])
                           aans = valsign(i,1)*a;
                           bans = valsign(i,2)*b;
                        end
                        prime = true;
                    else
                        valcnt(i) = -1;
                    end
                end
            end
            if prime == false
               break; 
            end
        end
    end
end

disp([aans,bans])
disp(aans*bans)
end
