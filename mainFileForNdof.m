function mainFileForProblem1
        clear all 
        clc

    % Given this is for problem 1
    [ndof,dt,dtInPlot,tmaxValue,t,X_0,Xd_0,M,C,K]=inputFileProblem1;

    % initialising values of the variables
    % here y is a state variable containing initial displacement and initial velicity
    wf=2*pi;
    y=[X_0;Xd_0];

    % allowcating space for the output variables
    % X is the displacement output
    % Xd is the velocity output
    X=zeros(ndof);
    Xd=zeros(ndof);

    % this is the number of time steps that are there in the problem
    n_time=tmaxValue/dt;

    % this is a time vector that is initialised
    % with zero values now
    % it will be updated during the iteration
    Time_vector=zeros(n_time,1);

    % This is a number of time step variable 
    % that is used to index through out the time vector
    T_index=0;

    while t<=tmaxValue
        % incrementing the time index of time vector
        T_index=T_index+1;

        % Updating the time vector wth current time step
        Time_vector(T_index,1)=t;

        % appliying the excitation
        excitation=ExternalExcitation(wf,ndof,t,dt);

        % using the rk routine to compute
        % displacement and time
        [y,t]=rk4ca2(wf,dt,t,y,M,C,K,ndof,excitation);

        % this is the computed displacement
        % assigned from rk to vector X
        X(:,T_index)=y(1:ndof);

        % this is the computed velocity
        % assigned from rk to vector Xd
        Xd(:,T_index)=y(ndof+1:2*ndof);
    end

    % this is the displacement vs time plot
    figure
    plot(Time_vector,X);
    title('Plot 1');
    ylabel('Displacement');
    xlabel('Time');

    % this is velocity vs time plot
    figure
    plot(Time_vector,Xd);
    title('Plot 2');
    ylabel('Velocity');
    xlabel('Time');


end