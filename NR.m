%% Newton-Raphson
function [solution,times] = NR (f1,df1,guess,acc)
y = guess;
times = 0 ;

while(1)
    h = y - (f1(y)/df1(y));
    if(abs(h-y)<acc)
        solution = h;
        times = times+1;
        return ;
    end
    times = times+1;
    y=h;
end
end