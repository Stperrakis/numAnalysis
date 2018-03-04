%%Regula-Falsi2
function [solution,times] = RF2 (f,a1,a2,a3,acc)
times = 0;
f0=f(a1);
f1=f(a2);
f2=f(a3);
while (1)
    q=f0/f1;
    r=f2/f1;
    s=f2/f0;
    h=a3-((r*(r-q)*(a3-a2)+(1-r)*s*(a3-a1))/((q-1)*(r-1)*(s-1)));
    a1=a2;
    a2=a3;
    a3=h;
    solution = a3;
    f0=f1;
    f1=f2;
    f2=f(h);
    if abs(a3-a2)<=acc
        return
    end    
times=times+1;
end
end

