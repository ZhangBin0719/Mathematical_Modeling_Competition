%%
%将可再生能源进行分类，并且找出四个洲不同行业单位情况 Quantity unit
clc
clear
%%
%CA
[num,txt,data]=xlsread('E:\CArenewable classification results.xls','sheeet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Quantity unit');
re2sources=data1(2:end,1);
% m=length(re2sources);
% year=1960:1:2009;
xlswrite('E:\QCADetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\QCArenewable classification results.xls',num(i),'sheet1','B2'),
%         xlswrite('E:\QCArenewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end
%%
%AZ
[num,txt,data]=xlsread('E:\AZrenewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Quantity unit');
re2sources=data1(2:end,1);
% m=length(re2sources);
% year=1960:1:2009;
xlswrite('E:\QAZDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\QAZrenewable classification results.xls',num(i),'sheet1','B2'),
%         xlswrite('E:\QAZrenewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end
%%
%NM
[num,txt,data]=xlsread('E:\NMrenewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Quantity unit');
re2sources=data1(2:end,1);
% m=length(re2sources);
% year=1960:1:2009;
xlswrite('E:\QNMDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\QNMrenewable classification results.xls',num(i),'sheet1','B2'),
%         xlswrite('E:\QNMrenewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end
%%
%TX
[num,txt,data]=xlsread('E:\TXrenewable classification results.xls','sheet1');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','Quantity unit');
re2sources=data1(2:end,1);
m=length(re2sources);
% year=1960:1:2009;
% xlswrite('E:\QTXDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    j
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\QTXrenewable classification results.xls',num(i),'sheet1','B2'),
%         xlswrite('E:\QTXrenewable classification results.xls',re2sources(j),'sheet1','B1');
    end
    end
end