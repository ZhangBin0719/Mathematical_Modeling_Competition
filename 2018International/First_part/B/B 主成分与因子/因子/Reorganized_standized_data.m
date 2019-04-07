%对1960-2009的605个变量进行标准化与数据重新安置
clc
clear

[num,txt,data]=xlsread('E:\竞赛\美赛\正式\程序\第一部分\A\因子分析\Factor analysis of raw data.xls','CA');
n=length(num);
year=num(:,1)-1959;
x=0;
da1=zeros(50,583);%583为某一年的最多行业种类
%数据重组
for m=1:50
    m
   % xlswrite('E:\竞赛\美赛\正式\程序\第一部分\A\因子分析\Reorganized data.xlsx',1959+m,'sheet1','B(m+1,1)');
    for i=1:n
    if year(i)==m,x=x+1,da1(m,x)=num(i,2);
       % xlswrite('E:\竞赛\美赛\正式\程序\第一部分\A\因子分析\Reorganized data.xlsx',num(i,2),'sheet1','B(m+1,x+1)');
    end
    end
        x=0;
end
%%
%数据标准化
da2=zeros(50,583);%583为某一年的最多行业种类
mi=min(da1');
mx=max(da1');
for i=1:50
    i
    for j=1:583,
        da2(i,j)=(da1(i,j)-mi)/(mx-mi);
end
end
xlswrite('E:\竞赛\美赛\正式\程序\第一部分\A\因子分析\Reorganized standized data.xlsx',da2,'Reorganized standized result')