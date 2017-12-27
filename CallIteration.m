% call iteration

clear all
clc

% Example 10.14 from Textbook
M=0.259*[1 0 0;
    0 1 0;
    0 0 .5];
K=(168/9)*[16 -7 0;
    -7 10 -3;
    0 -3 3];
k=3;

res1=InverseVectorIterationGeneralised(M,K,k)

% problem 10.29 
M=0.2588*[1 0 0;
    0 1 0;
    0 0 .5];
K=(326.32)*[2 -1 0;
    -1 2 -1;
    0 -1 1];
k=2;

res=InverseVectorIterationGeneralised(M,K,k)

