%% Simpson
function [solution,err] = Simpson(x,f)
n = length(x);
 h=((x(n)-x(1))/(3*(n-1)));
 sum=0;
 sum1=0;
 for i=3:2:n-2
     sum = sum+2*f(i);   
 end
 
 for i=2:2:n
     sum1 = sum1+4*f(i);   
 end
 solution= h*(f(1)+sum+sum1+f(n));
 err = ((x(n)-x(1))^5)/(120*(n^4));
end