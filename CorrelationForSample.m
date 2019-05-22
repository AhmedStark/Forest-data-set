Correlation;

R2 = corrcoef(AttributesUsed(1:20,:));
Corr20=R2(:,11);

Attributes20=Attributes(1:20,:);
Areas20=AreaBurned(1:20,:);

minTemp20=min(Attributes20(:,7));

minRH20=min(Attributes20(:,8));

minArea20=min(Area20);


maxTemp20=max(Attributes20(:,7));

maxRH20=max(Attributes20(:,8));

maxArea20=max(Area20);

