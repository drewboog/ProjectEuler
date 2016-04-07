function problem40
dpro = 1;
d1 = 1;
i = 0;
s = 0;
while s < 1000000
i = i+1;
str = num2str(i);
N = length(str);
s = s + N;
    if s>=d1
        diff = N-(s-d1);
        if diff <= 0
            diff = 1;
        end
        v1str = str(diff);
        v1 = str2num(v1str);
        dpro = dpro*v1;
        d1 = d1*10;
    end
end
disp(dpro)
end
