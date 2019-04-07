clc
clear
%*********************************读取数据*********************************

[X,textdata,num] = xlsread('E:\竞赛\美赛\正式\程序\第一部分\A\因子分析\Reorganized standized data result.xlsx'); % 从Excel文件中读取数据  
X=X(:,2:end); % 提取X，即要分析的数据
varname = num(1,2:end);%变量名
obsname = X(1:end,1); %提取X的第1列，第1至最后一行，即年份
%******************调用factoran函数根据原始观测数据作因子分析*****************  
% 从原始数据（实质还是相关系数矩阵）出发，进行因子分析，公共因子数为4  
% 进行因子旋转(最大方差旋转法)  
[lambda,psi,T,stats] = factoran(X,4);  
Contribut = 100*sum(lambda.^2)/583 %计算贡献率，因子载荷阵的列元素之和除以维数  
CumCont = cumsum(Contribut) %计算累积贡献率  

% 从原始数据（实质还是相关系数矩阵）出发，进行因子分析，公共因子数为2  
% 进行因子旋转(最大方差旋转法)  
[lambda,psi,T,stats,F] = factoran(X,2);
Contribut = 100*sum(lambda.^2)/583 %计算贡献率，因子载荷阵的列元素之和除以维数  
CumCont = cumsum(Contribut) %计算累积贡献率 

[varname' num2cell(lambda)]  
%**************将因子得分F分别按**因子得分和**因子得分进行排序*************  
obsF = [obsname, num2cell(F)]; % 将国家和地区名与因子得分放在一个元胞数组中显示  
F1 = sortrows(obsF, 2); % 按**因子得分排序  
F2 = sortrows(obsF, 3); % 按**因子得分排序  
head = {'行业/年份','**因子','**因子'};  
result1 = [head; F1]; % 显示按**因子得分排序的结果 
result2 = [head; F2]; % 显示按**因子得分排序的结果  
%*************************绘制因子得分负值的散点图***************************  
plot(-F(:,1),-F(:,2),'k.') ; %作因子得分负值的散点图  
xlabel('**因子得分（负值）'); %为X轴加标签  
ylabel('**因子得分（负值）'); %为Y轴加标签  
box off ; %去掉坐标系右上的边框  
gname(obsname); %交互式添加各散点的标注