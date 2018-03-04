%% Gauss
function [G,x]=gauss(A,b)
n=length(b);
m=zeros(n,1);
x=zeros(n,1);

for k =1:n-1
    m(k+1:n) = A(k+1:n,k)/A(k,k);
    for i=k+1:n
        A(i, k+1:n) = A(i,k+1:n)-m(i)*A(k,k+1:n);
    end
    b(k+1:n)=b(k+1:n)-b(k)*m(k+1:n);
end
G= triu(A);
end
% source : wikipedia
%  for k = 1 ... min(m,n):
%    /* Find the k-th pivot: */
%    i_max  := argmax (i = k ... m, abs(A[i, k]))
%    if A[i_max, k] = 0
%      error "Matrix is singular!"
%    swap rows(k, i_max)
%    /* Do for all rows below pivot: */
%    for i = k + 1 ... m:
%      f := A[i, k] / A[k, k]
%      /* Do for all remaining elements in current row: */
%      for j = k + 1 ... n:
%        A[i, j]  := A[i, j] - A[k, j] * f
%      /* Fill lower triangular matrix with zeros: */
%      A[i, k]  := 0