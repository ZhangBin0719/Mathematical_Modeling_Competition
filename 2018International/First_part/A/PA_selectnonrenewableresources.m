%%
%将不可再生能源进行分类，并且找出四个洲不同行业单位情况 Price unit
clc
clear
%%
%CA
[num,txt,data]=xlsread('E:\CAnon_renewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Price unit');
re2sources=data1(2:end,1);
m=length(re2sources);
%year=1960:1:2009;
%xlswrite('E:\PCADetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\PCAnon_renewable classification results.xls',num(i),'sheet1','B2'),
%        xlswrite('E:\PCAnon_renewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end
%%
%AZ
[num,txt,data]=xlsread('E:\AZnon_renewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Price unit');
re2sources=data1(2:end,1);
m=length(re2sources);
%year=1960:1:2009;
%xlswrite('E:\PAZDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\PAZnon_renewable classification results.xls',num(i),'sheet1','B2'),
%        xlswrite('E:\PAZnon_renewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end
%%
%NM
[num,txt,data]=xlsread('E:\NMnon_renewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Price unit');
re2sources=data1(2:end,1);
m=length(re2sources);
%year=1960:1:2009;
%xlswrite('E:\PNMDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\PNMnon_renewable classification results.xls',num(i),'sheet1','B2'),
%        xlswrite('E:\PNMnon_renewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end
%%
%TX
[num,txt,data]=xlsread('E:\TXnon_renewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Price unit');
re2sources=data1(2:end,1);
m=length(re2sources);
%year=1960:1:2009;
%xlswrite('E:\PTXDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\PTXnon_renewable classification results.xls',num(i),'sheet1','B2'),
%        xlswrite('E:\PTXnon_renewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end