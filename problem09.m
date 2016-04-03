function problem9
clear all
clc
for b = 1:1000
    for a = 1:1000
        if a>b
            break
        end
        c = sqrt(a*a+b*b);
        if ~mod(c,1)
            if b < c
               abcSum = a+b+c;
               if abcSum == 1000
                  abcPro = a*b*c;
                  disp(abcPro);
               end
            end
        end
    end
end
end