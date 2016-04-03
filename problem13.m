function problem13

clc
fclose all;
format long g

fileName = '/Users/dev/projectEuler/prob13.txt';

fid = fopen(fileName);
sum = 0;
while ~feof(fid) ;
    tline=fgets(fid);
    num = str2num(tline);
    sum = sum+num;
end

sumstr = num2str(sum);
first10 = sumstr(1:11);
disp(first10)
fclose(fid);
 
end