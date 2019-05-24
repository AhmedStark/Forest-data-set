Fuzzify20;

% get a random sample of 10.

Attributes10=Attributes(1:10,:);
Area10=AreaBurned(1:10,:);

% A column of zeros must be filled manually using the fuzzy logic.
All10 =[Attributes10(:,7),Attributes10(:,8),Area10,zeros(10,1)];

All10Table = array2table(All10,'VariableNames',{'Temp','RH','AreaBurned','AreaBurnedPredicted'});

% 1 means the area burned is large and 0 means area burned is small
ActualLargeArea=All10Table.AreaBurned>=100;
PredictLargeArea=All10Table.AreaBurnedPredicted>=100;

All10=table2array(All10Table);

CompareResult=[ActualLargeArea,PredictLargeArea];

% Getting results

confusionFuzzy10=confusionmat(CompareResult(:,1),CompareResult(:,2));

confChartFuzzy=confusionchart(CompareResult(:,1),CompareResult(:,2));
title("confusion matrix for 10 samples");

% To avoid error of having an conf matrix with one value
if (confusionFuzzy10(1,1)==10)
    confusionFuzzy10(1,2)=0;
    confusionFuzzy10(2,1)=0;
    confusionFuzzy10(2,2)=0;
end


% Accuracy =(TP+TN)/total 
Accuracy10=(confusionFuzzy10(1,1)+confusionFuzzy10(2,2))/10;

% Precision TP/predicted Large.
Precision10=confusionFuzzy10(1,1)/(confusionFuzzy10(1,2)+confusionFuzzy10(2,2));

% Recall=TP/TP+FN
Recall10=confusionFuzzy10(1,1)/(confusionFuzzy10(1,1)+confusionFuzzy10(2,1));

