CorrelationFor20Samples;


% 1 means the area burned is large and 0 means area burned is small
IndexLargeArea=All20Table.AreaBurned>=100;

All20=table2array(All20Table);

SamplesResult=[All20,IndexLargeArea];

% Getting results
load("20SamplesResults");
SamplesResult=[SamplesResult,All(:,5)];

confusionFuzzy=confusionmat(All(:,4),All(:,5));

confChartFuzzy=confusionchart(All(:,4),All(:,5));
title("KNN confusion matrix");

% Accuracy =(TP+TN)/total 
Accuracy20=(confusionFuzzy(1,1)+confusionFuzzy(2,2))/20;

% Precision TP/predicted Large.
Precision20=confusionFuzzy(1,1)/(confusionFuzzy(1,2)+confusionFuzzy(2,2));

% Recall=TP/TP+FN
Recall20=confusionFuzzy(1,1)/(confusionFuzzy(1,1)+confusionFuzzy(2,1));
