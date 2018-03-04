%% methodos tetragonon First order.
function [solve]= polyApp(f1,x,target)
n = size(x,2);
x2=x.^2;
f1xi=x.*f1;
sumx2=0;
sumf1xi=0;
sumf1=0;
sumx=0;
for i=1:n
    sumx2=sumx2 + x2(i);
    sumf1xi=sumf1xi +f1xi(i);
    sumf1=f1(i)+sumf1;
    sumx=sumx +x(i);
end

solve1 = [n,sumx;sumx,sumx2];
b = [sumf1;sumf1xi];
g= linsolve(solve1,b);
solve = g(1) + g(2)*target;
end