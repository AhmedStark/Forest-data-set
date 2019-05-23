Fuzzify20;

% get a sample of 10.
Attributes10=Attributes(1:10,:);
Area10=AreaBurned(1:10,:);
All10 =[Attributes10(:,7),Attributes10(:,8),Area10,zeros(10,1)];

All10Table = array2table(All10,'VariableNames',{'Temp','RH','AreaBurned','AreaBurnedPredicted'});

