rng default % For reproducibility
options = optimoptions('ga','PlotFcn','gaplotbestf');
for i=1:15
    int_flag = 0;
    % For 10-D replace 2 with 10
    [solution_Ack,Ack_objectiveValue] = ga(@rastriginsfcn,10,[],[],[],[],[],[],[],[],options);
    Sol_ack(i,:) = solution_Ack;
    Ack(i) = Ack_objectiveValue
    % save visualizations to file
fname = sprintf('GA-rar(%d).fig', i) ; savefig(fname)
end
%% GA 15 iteration measures
Ack_max = max(Ack);
Ack_min = min(Ack);
Ack_mean = mean(Ack);
Ack_std = std(Ack);

options = optimoptions('ga','PlotFcn','gaplotbestf');
for i=1:15
    int_flag = 0;
    % For 10-D replace 2 with 10
    [solution_rast,Rast_objectiveValue2] = ga(@ackleyfcn,10,[],[],[],[],[],[],[],[],options);
    Sol_rast(i,:) = solution_rast;
    Rast(i) = Rast_objectiveValue2
    % save visualizations to file
fname = sprintf('GA-rar(%d).fig', i) ; savefig(fname)
end
%% GA 15 iteration measures
Rast_max = max(Rast)
Rast_min = min(Rast)
Rast_mean = mean(Rast)
Rast_std = std(Rast)

