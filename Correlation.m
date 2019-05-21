First;
% used a sample of 200 because the graphs look messy when I use all of the
% data
AreaBurnedSample=AreaBurned(1:200,:);
AttributesSample=Attributes(1:200,:);

% plotmatrix to show attributes' correlation with the area burned.
subplot(3,4,1)
x = AreaBurnedSample;
y1 = AttributesSample(:,1);
plotmatrix(x,y1)
title('X correlation')

subplot(3,4,2)
x = AreaBurnedSample;
y2=AttributesSample(:,2);
plotmatrix(x,y2)
title('Y correlation')

subplot(3,4,3)
y3 = AttributesSample(:,3);
plotmatrix(x,y3)
title('FFMC correlation')

subplot(3,4,4)
y4 = AttributesSample(:,4);
plotmatrix(x,y4)
title('DMC correlation')

subplot(3,4,5)
y5 = AttributesSample(:,5);
plotmatrix(x,y5)
title('DC correlation')

subplot(3,4,6)
y6 = AttributesSample(:,6);
plotmatrix(x,y6)
title('ISI correlation')

subplot(3,4,7)
y7 = AttributesSample(:,7);
plotmatrix(x,y7)
title('Temp correlation')

subplot(3,4,8)
y8 = AttributesSample(:,8);
plotmatrix(x,y8)
title('RH correlation')

subplot(3,4,9)
y9 = AttributesSample(:,9);
plotmatrix(x,y9)
title('Wind correlation')

subplot(3,4,10)
y10 = AttributesSample(:,10);
plotmatrix(x,y10)
title('Rain correlation')


%figuring out correlation.
R = corrcoef(AttributesUsed);
Corr=R(:,11);
