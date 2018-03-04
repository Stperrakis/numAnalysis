%% Lagrance
function [sum] = Lagrange(f,x,target)
n = length(x);
l = ones(1,n);

l(1) = ((target - x(2))*(target - x(3)))/((x(1)-x(2))*(x(1)-x(3)));
l(2) = ((target - x(1))*(target - x(3)))/((x(2)-x(1))*(x(3)-x(2)));
for i=3:n-1
    l(i) = ((target - x(i-1))*(target - x(i+1)))/((x(i)-x(i-1))*(x(i)-x(i+1)));
end
sum = 0;
for i=1:length(l)
    sum = sum +f(i)*l(i);
end
end

