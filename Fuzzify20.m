CorrelationFor20Samples;


% 1 means the area burned is large and 0 means area burned is small
IndexLargeArea=All20Table.AreaBurned>=100;

All20=table2array(All20Table);


% Getting results
load("20SamplesResults");
Predict=All(:,5)>=100;
SamplesResult=[IndexLargeArea,All(:,5)>=100];

confusionFuzzy=confusionmat(SamplesResult(:,1),SamplesResult(:,2));

confChartFuzzy=confusionchart(SamplesResult(:,1),SamplesResult(:,2));
title("confusion matrix for 20 samples");

% Accuracy =(TP+TN)/total 
Accuracy20=(confusionFuzzy(1,1)+confusionFuzzy(2,2))/20;

% Precision TP/predicted Large.
Precision20=confusionFuzzy(1,1)/(confusionFuzzy(1,2)+confusionFuzzy(2,2));

% Recall=TP/TP+FN
Recall20=confusionFuzzy(1,1)/(confusionFuzzy(1,1)+confusionFuzzy(2,1));
