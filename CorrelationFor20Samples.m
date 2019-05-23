Correlation;
% getting correlation for 20 samples.
RSample = corrcoef(AttributesUsed(1:20,:));
Corr20=RSample(:,11);


Attributes20=Attributes(1:20,:);
Area20=AreaBurned(1:20,:);
All20 =[Attributes20(:,7),Attributes20(:,8),Area20];

All20Table = array2table(All20,'VariableNames',{'Temp','RH','AreaBurned'});

Summary20Samples=summary(All20Table);
% getting minimums.
minTemp20=Summary20Samples.Temp.Min;

minRH20=Summary20Samples.RH.Min;

minArea20=Summary20Samples.AreaBurned.Min;

% getting maximums.
maxTemp20=Summary20Samples.Temp.Max;

maxRH20=Summary20Samples.RH.Max;

maxArea20=Summary20Samples.AreaBurned.Max;

% getting median.
medTemp20=Summary20Samples.Temp.Median;

medRH20=Summary20Samples.RH.Median;

medArea20=Summary20Samples.AreaBurned.Median;


