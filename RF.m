%% Regula-Falsi
function [solution,times] = RF (f1,a1,a,acc)
y = a1;
b = a;
times = 0 ;
while(1)
    h = y - f1(y) * ((y-b)/(f1(y)-f1(b)));
    if(abs(h-y)<acc||times==100)
        solution = h;
        times = times+1;
        return ;
    end
    times = times+1;
    b=y;
    y=h;
end
end