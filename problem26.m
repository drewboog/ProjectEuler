function problem26
clc
% brute force
maxLen = 0;
for i = 1:1000
   d = sym(i);
   val = vpa(1/d,5000);
   strVal = char(val);
   N = length(strVal);
   
   % remove strings that end
   if N < 999 
        continue;
   end
   
   % remove repeated single digits
   subStrVal1 = strVal(50:70);
   subStrVal2 = strVal(90:100);
   if strcmp(subStrVal1,subStrVal2)
      continue;
   end
   
   string1 = strVal(3:end);
   for j = 1:4000
    string2 = strVal(20:(25+j)); 
    check = strfind(string1,string2);
    M = length(check);
    if M < 5
       break; 
    end
    len1 = check(3)-check(2);
    len2 = check(4)-check(3);
    len3 = check(5)-check(4);
    
    % probably a match
    if len1 == len2 && len2 == len3
        if len1> maxLen
            maxLen = max(maxLen,len1);
            disp(maxLen+1) % Add one to include first point
        end
        break;
    end
    
   end
   
end
end
