function problem30
sum =0;
for i = 2:500000
    str = num2str(i);
    sumi = 0;
    for j = 1:length(str)
       dig = str2num(str(j));
       sumi = sumi + dig^5; 
    end
    if sumi == i
        sum = sum+sumi;
        disp(sumi)
    end    
end
disp(sum)
end
