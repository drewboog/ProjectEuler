
jan = 31;
feb = 28;
mar = 31;
apr = 30;
may = 31;
jun = 30;
jul = 31;
aug = 31;
sep = 30;
oct = 31;
nov = 30;
dec = 31;

monthdays = [jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec];

sum(monthdays)

dayCnt = 0;
dayOfWeek = 0;

for year = 1:100
    daysInYear = 365;
    divBy4 = (year+1900)/4;
    intDivBy4 = floor(divBy4);
    if divBy4 == intDivBy4 && (year~= 100)
        daysInYear = 366;
        monthdays(2) = 29;
    else
        monthdays(2) = 28;
    end
    month = 1;
    dayOfMonth = 0;
    
    for day = 1:daysInYear
        if day > monthdays(1)
            if day > sum(monthdays(1:(month-1)))
                month = month+1;
                dayOfMonth = 0;
            end
        end
        dayOfMonth = dayOfMonth+1;
        dayOfWeek = dayOfWeek+1;
        
        if dayOfWeek > 7
           dayOfWeek = 1; 
        end
        
        if dayOfWeek == 7 && dayOfMonth == 1
           dayCnt = dayCnt+1; 
        end
        
        
    end
end
dayCnt


