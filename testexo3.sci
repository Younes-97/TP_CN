function []=test(M,P,N)

A=rand(M,P);
B=rand(P,N);

tic();
C3=matmat3b(A,B)
t3=toc()
disp("t3=",t3)

tic();
C2=matmat2b(A,B)
t2=toc()
disp("t2=",t2)

tic();
C1=matmat1b(A,B)
t1=toc()
disp("t1=",t1)

tic();
C=A*B
t=toc()
disp("t=",t)



endfunction
