%% Table
function [solution,err] = intTable2( xi,f )
    s = size(xi,2);
    s =s-1;
    h = (xi(s)-xi(1))/(2*s);
    sum =0;
   for i=2:s
        sum = f(i)+sum;
   end
    solution=h*(f(1)+f(i)+2*sum);
    err =((xi(s)-xi(1))^3)/(12*(s.^2));
end