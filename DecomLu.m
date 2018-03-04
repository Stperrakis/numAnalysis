
%% L-U
function [P,L,U] = DecomLu(A)
n = size(A,1);
P = zeros(n);
s = 1:n;
indi = 1 ;
L = zeros(n);
U = zeros (n);
for i=1 :n-1
    P(i,i) = 1;
    [a,thesis] = max(A((i:n),indi));
    thesis= thesis+indi;
    if(thesis>n)
        thesis = n;
    end
    P(thesis,thesis) = 1;
    temp = P(thesis,:);
    P(thesis,:) =P(i,:);
    P(i,:)= temp;   
    temp = A(thesis,:);
    A(thesis,:) = A(i,:);
    A(i,:)= temp;
    k = [(i+1):n];
    mm = A(k:n,i)/A(i,i);
    A(k,:) = A(k,:)-mm.*A(i,:);
    L(k:n,i) = mm;
    indi=indi+1;
end
U = A;
end
