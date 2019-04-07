%%
%将46种可再生能源进行分类，并且找出四个洲的能源情况
clc
clear
%%
%CA
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','CA');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','non_renewable');
norsources=data1(2:end,1);
m=length(norsources);
year=1960:1:2009;
xlswrite('E:\CADetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    for i=1:n-1
    if isequal(data(i),norsources(j))
        xlswrite('E:\CAnon_renewable classification results.xls',num(i),'sheet1','B2'),
        xlswrite('E:\CAnon_renewable classification results.xls',norsources(j),'sheet1','B1');
    end
    end
end
%%
%AZ
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','AZ');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','non_renewable');
norsources=data1(2:end,1);
m=length(norsources);
year=1960:1:2009;
xlswrite('E:\AZDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    for i=1:n-1
    if isequal(data(i),norsources(j))
        xlswrite('E:\AZnon_renewable classification results.xls',num(i),'sheet1','B2'),
        xlswrite('E:\AZnon_renewable classification results.xls',norsources(j),'sheet1','B1');
    end
    end
end
%%
%TX
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','TX');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','non_renewable');
norsources=data1(2:end,1);
m=length(norsources);
year=1960:1:2009;
xlswrite('E:\TXDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    for i=1:n-1
    if isequal(data(i),norsources(j))
        xlswrite('E:\TXnon_renewable classification results.xls',num(i),'sheet1','B2'),
        xlswrite('E:\TXnon_renewable classification results.xls',norsources(j),'sheet1','B1');
    end
    end
end
%%
%NM
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','NM');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','non_renewable');
norsources=data1(2:end,1);
m=length(norsources);
year=1960:1:2009;
xlswrite('E:\NMDetailed classification results.xls',year,'sheet1','A2:A51'),
for j=1:m
    for i=1:n-1
    if isequal(data(i),norsources(j))
        xlswrite('E:\NMnon_renewable classification results.xls',num(i),'sheet1','B2'),
        xlswrite('E:\NMnon_renewable classification results.xls',norsources(j),'sheet1','B1');
    end
    end
end