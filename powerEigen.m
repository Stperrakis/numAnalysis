
%% Eigen
function [l,v] = powerEigen(G)
sizG = size(G,1);
u0 = ones(sizG,1);
maxl = 0;
while(1)
    v = G*u0;
    a = max(v);
    if ((abs(a-maxl)<=(0.5)*10^(-6)))
        l=a;
        return;
    else
        maxl=a;
    end
    u0= (1/maxl)*v;
    
end
end