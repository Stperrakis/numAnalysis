
%% Last square
function [solution] = lstSqr(x,y,grade,targ)
grade = grade +1;
g = zeros(grade);
s = zeros(grade,1);

for i =1 :grade 
    for j = 1:grade
        g(i,j) = sum(x.^(j-2+i));
        if j==1
            indi = j-2+i;
        end
    end
    s(i) = sum ((x.^indi).*y);
end

a= linsolve(g,s);
solution = 0;

for i=1:grade
    solution = a(i)*(targ^(i-1))+solution;
end

end