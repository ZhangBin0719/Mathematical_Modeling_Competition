%4个州进行主成分分析
clc
clear
[num,txt,data]=xlsread('E:\竞赛\美赛\正式\程序\第一部分\A\主成分分析\CAReorganized data.xlsx','Reorganized result');
X=num(:,2:end);
[Z,m,lamda,U] = MainAnalysis(X);