clc
clear
[num,txt,data]=xlsread('E:\CAReorganized data.xlsx','Reorganized result');
X=num(:,2:end);
c=clusterdata(X,'linkage','ward','savememory','on','maxclust',4);