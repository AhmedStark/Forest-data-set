%getting the table to the workspace.
ForestFiresTable = readtable('forestfires.csv');

%randomising data.
randSample=ForestFiresTable(randperm(end),:);

% AttributesUsed has all the attributes except day and month because they
% are irrelevant to the classification. 
AttributesUsed=[ForestFiresTable(:,1:2),ForestFiresTable(:,5:13)];


% Converted everythig to arrays.
AttributesUsed=table2array(AttributesUsed);

AreaBurned=AttributesUsed(:,11);
Attributes=AttributesUsed(:,1:10);





