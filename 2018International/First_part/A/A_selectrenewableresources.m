%%
%将46种可再生能源进行分类，并且找出四个洲的能源情况
clc
clear
%%
%CA
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','CA');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','reproducible');
re2sources=data1(2:3,1);
m=length(re2sources);
for j=1:m
    for i=1:n-1
        i
    if isequal(data(i),re2sources(j))
        xlswrite('E:\CArenewable classification results.xls',num(i),'sheet1','B2');
    end
    end
end
%%
%AZ
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','AZ');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','reproducible');
re2sources=data1(2:end,1);
m=length(re2sources);
for j=1:m
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\AZrenewable classification results.xls',num(i),'sheet1','B2');
    end
    end
end
%%
%NM
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','NM');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','reproducible');
re2sources=data1(2:end,1);
m=length(re2sources);
for j=1:m
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\CArenewable classification results.xls',num(i),'sheet1','B2');
    end
    end
end
%%
%TX
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','TX');
data=data(2:end,1);
n=length(data);
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','reproducible');
re2sources=data1(2:end,1);
m=length(re2sources);
for j=1:m
    for i=1:n-1
    if isequal(data(i),re2sources(j))
        xlswrite('E:\TXrenewable classification results.xls',num(i),'sheet1','B2');
    end
    end
end
