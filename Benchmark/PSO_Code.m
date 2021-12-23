rng default % For reproducibility
n = 10;
Rfunc = @rastriginsfcn;

for k=1:15
    int_flag = 0;
    % Setting non-default solving options
k_options = optimoptions('particleswarm','PlotFcn','pswplotbestf');

% Solution
[k_sol,k_objectValue] = particleswarm(Rfunc,n,[],[],k_options);
    k_Sol(k,:) = k_sol;
    k_OV(k) = k_objectValue
% saving output in file
first_name = sprintf('ps-ras2(%d).fig', k) ; savefig(first_name)
end
%% GA 15 iteration measures
pso_OV_max10 = max(k_OV)
pso_OV_min10 = min(k_OV)
pso_OV_mean10 = mean(k_OV)
pso_OV_std10 = std(k_OV)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n2 = 10;
k_fun2 = @ackleyfcn;

for k=1:15
    int_flag = 0;
    % Setting non-default solving options
k_options = optimoptions('particleswarm','PlotFcn','pswplotbestf');

% Solution
[k_solution2,k_objectiveValue2] = particleswarm(k_fun2,n2,[],[],k_options);
    k_Sol2(k,:) = k_solution2;
    k_OV2(k) = k_objectiveValue2
% Storing output in file
first_name = sprintf('ps-ack2(%d).fig', k) ; savefig(first_name)
end
%% GA-15 iterations
k_OV2_max10 = max(k_OV2)
k_OV2_min10 = min(k_OV2)
k_OV2_mean10 = mean(k_OV2)
k_OV2_std10 = std(k_OV2)