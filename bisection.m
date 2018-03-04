%% bisection
function [solution,i] = bisection(f1,a,a1,acc)
if(a>a1)
    temp = a;
    a=a1;
    a1=temp;
end
y = f1(a);
y1 = f1(a1);
if (y==0)
    solution = a;
    return ;
elseif(y1==0)
    solution = a1;
    return;
end
if sign(y) == sign(y1)
    error('Pick a proper a1 - a(Bolzano theorem have to exist)');
end

n = round(log2((a-a1)* 10.^7))+1;
n= real(n);

for i=1:n
    solution =(a+a1)/2;
    s = f1(solution);
    if(s==0)
        return;
    end
    if ((abs(a1 - a) <= acc))
        break
    end
    if(y*s<0)
        a1 = solution;
        y1 = s;
    else
        a = solution;
        y = s;
        
    end
end
end