function EigenValueAndVector = InverseVectorIterationGeneralised(M,K,k)
format long
% the following program computes the eigen values and eigen vectors 
% to any number of degree of freedom system
% setting the number of degrees of freedom
% of the problem
dof=3 ; %input('give the total number of degrees of freedom of the system ');


% here k is the total number of eigen values we want the
% program to give it as output

% This is the output which contains 
% eigen value in the first half section and
% eigen vectors in the second half of the section
EigenValueAndVector_all=zeros(dof,2*dof);

% this is lamda Initial guess
la=0;

for c=1:dof

    % this is the shift in eigen value that has to be done
    shift=la*dof;
    % The shifted value is assigned as the starting value in computation
    la=shift;

    % this matrix is due to the shifting
    Ks=K-shift*M;

    % initial guess for the eigen vector
    xjp1=ones(dof,1);

    for i=1:100
       %we begin iterating for eigen vector from here
       xjp1=inv(Ks)*M*xjp1;
       lamda=(xjp1'*Ks*xjp1)/(xjp1'*M*xjp1);
       
       % this is the normalised forn of eigen vector
       xjp1=xjp1/(xjp1'*M*xjp1)^0.5;
       
       % this is the tolerence used to stoop the iteration
       toler=lamda-la;
       
       % if statement to break if tolerence is reached
       % this if statement ensures we get convergence
       if(abs(toler)<0.001 )
           break 
       end
       
       % assigning the computed eigen value per iteration to
       % initial guess of eigen value 
       la=lamda;
    end
    
    % shifting the eigen vector bact to original system
    la=lamda+shift;

    % post processing the eigen value for output
    EigenValueAndVector_all(c,c)=la;
    
    % post processing the eigen vector for out put
    EigenValueAndVector_all(:,3+c)=xjp1;
    
    % initialising Ks back to K after shifting 
    Ks=K;

end
% here k is the total number of eigen values we want the
% program to give it as output
   EigenValueAndVector=zeros(dof,2*k);
   for h=1:k
      EigenValueAndVector(:,h)= EigenValueAndVector_all(:,h);
   end
   for h=1:k
      EigenValueAndVector(:,k+h)= EigenValueAndVector_all(:,dof+h);
   end 
   EigenValueAndVector;
   naturalFrequency=EigenValueAndVector(:,1:k);
   for d=1:k
      naturalFrequency(d,d)= sqrt(naturalFrequency(d,d)); 
   end
   naturalFrequency
end