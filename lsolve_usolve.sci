s=100
rand("seed")

n=100

A=rand(n,n)

L=tril(A)
U=triu(A)

xex=rand(n,1);

a=U*xex;
c=L*xex;

l=lsolve(A,c)
u=usolve(A,a)

fErrorB=norm(xex-xu,2)/norm(xex,2)
fErrorB1=norm(xex-l,2)/norm(xex,2)

bErrorB=norm(a-U*u,2)/norm(a,2)
bErrorB1=norm(c-U*l,2)/norm(a,2)
