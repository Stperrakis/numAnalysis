%% Cholesky
function [L,U] = Cholesky(A)
    m = size(A,1);       
    L = zeros(m,m);   
    row = 1;
    column = 1;
    j = 1;
    for i=1:m
        ast = abs(sqrt(A(1,1)));
        L(row,column) = ast;
        if(m~=1)
            Lm = A(j+1:m,1)/ast;
            L(row+1:end,column) = Lm;
            A = (A(j+1:m,j+1:m)-Lm*Lm');
            m = size(A,1);
            row = row+1;
            column = column+1;
        end
    end 
    U=L';     
end