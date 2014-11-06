function [matri r c]=matriz(n)
a=ones(1,n);

A=eye(n);
matri=zeros(2*n,n^2);
for i=1:n
    matri(i,n*(i-1)+1:n*i)=a;
    matri(n+1:2*n,n*(i-1)+1:n*i)=A;
end
c=cond(matri);
r=rank(matri);
  




