%getting the table to the workspace.
ForestFiresTable = readtable('forestfires.csv');

%Removes data with 0 area burned.(Filtering not useful data)
index=ForestFiresTable.area>0;
ForestFiresTable=ForestFiresTable(index,:);

%randomising data.
randTable=ForestFiresTable(randperm(end),:);

% AttributesUsed has all the attributes except day and month because they
% are irrelevant to the classification. 

AttributesUsed=[randTable(:,1:2),randTable(:,5:13)];


% Converted everythig to arrays.
AttributesUsed=table2array(AttributesUsed);

AreaBurned=AttributesUsed(:,11);
Attributes=AttributesUsed(:,1:10);





