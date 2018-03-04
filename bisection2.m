%% bisection2
function [sol,times] = bisection2(f,a,a1,acc)
f1 = f(a);
f2 = f(a1);
if(f1*f2<0)
    times = 1;   
    while (1)
     r = rand();
    sol = a+r*(a1 - a);
    f3 = f(sol);
    if (abs(a1 - a)<=acc)
        return ;
    end
    if (f1*f3)>0
        a = sol;
        f1 = f(a);
    else
        a1 = sol;
    end
        times=times+1 ;
    end
end
end