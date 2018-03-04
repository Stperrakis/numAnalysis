%% Newton-Rapshon modified
function [x times] = NR2(f1, df1, df2, x0, acc)
x = x0;
times = 0;
while (1)
    y = f1(x);
    df = df1(x);
    ddf2 = df2(x);
    x2= x;
    x = x - (y / df + (y^2 * ddf2) / (2 * df^3));
    if abs(x2 - x) <= acc
        return 
    end
    times = times+1;
end
end