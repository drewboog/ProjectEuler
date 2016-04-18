function Problem19

monDays = [31, ... %jan
           28, ... %feb
           31, ... %mar
           30, ... %apr
           31, ... %may
           30, ... %jun
           31, ... %jul
           31, ... %aug
           30, ... %sep
           31, ... %oct
           30, ... %nov
           31];    %dec

sunCnt = 0;
dayofwk = 1;
for year = 1900:2000
    mon = 1;
    
    if (year/4 == floor(year/4)) && year ~= 1900
        monDays(2) = 29;
    else
        monDays(2) = 28;
    end
    
    for day = 1:sum(monDays)

        if day > sum(monDays(1:mon))
            mon = mon +1;
            firstDayOfMonth = true;
        else
            firstDayOfMonth = false;
        end
        
        if year >= 1901 && dayofwk==7 && (day == 1 || firstDayOfMonth == true)
            sunCnt = sunCnt+1;
        end
            
        dayofwk = dayofwk + 1;
        if dayofwk > 7
            dayofwk = 1;
        end
    end
end

disp(sunCnt)
