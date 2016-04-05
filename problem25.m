function problem25
clc

Fnm1 = sym(1);
Fnm2 = sym(1);
digs = 0;
i = 2;
while digs < 1000

   Fn = (Fnm1+Fnm2);
   Fnm2 = Fnm1;
   Fnm1 = Fn;
   i = i+1;
   digs = numel(char(Fn));
   disp(digs)
end
disp(i)
end
