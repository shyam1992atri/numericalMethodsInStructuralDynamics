% call iteration

clear all
clc
M=0.259*[1 0 0;
    0 1 0;
    0 0 .5];
K=(168/9)*[16 -7 0;
    -7 10 -3;
    0 -3 3];
k=3
% res=MDOFpowerMethod(M,K,k)
res=InverseVectorIterationGeneralised(M,K,k)
%res=ivim(M,K,k)