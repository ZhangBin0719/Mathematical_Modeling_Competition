%%
%燃料乙醇+生物质能
%数量
%C在可再生资源上进行分类，分出水电、燃料乙醇、地热、太阳能、生物质能、风能去讨论
clc
clear
%%
%燃料乙醇+生物质能（数量上）
%AZ
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','AZrenewable1');
x=1960:1:2009;y=1:6;z=cell2mat(data(2:7,2:end));
[x,y]=meshgrid(x,y);
%CA
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','CArenewable1');
x1=1960:1:2009;y1=1:6;z1=cell2mat(data1(2:7,2:end));
[x1,y1]=meshgrid(x1,y1);
%NM
[num2,txt2,data2]=xlsread('E:\Preliminary classification data.xls','NMrenewable1');
x2=1960:1:2009;y2=1:6;z2=cell2mat(data2(2:7,2:end));
[x2,y2]=meshgrid(x2,y2);
%TX
[num3,txt3,data3]=xlsread('E:\Preliminary classification data.xls','TXrenewable1');
x3=1960:1:2009;y3=1:6;z3=cell2mat(data3(2:7,2:end));
[x3,y3]=meshgrid(x3,y3);
%draw
subplot(2,2,1)
surf(x,y,z)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('AZ fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,2)
surf(x1,y1,z1)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('CA fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,3)
surf(x2,y2,z2)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('NM fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,4)
surf(x3,y3,z3)
view(30,30)
shading interp
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('TX fuel ethanol and biomass energy change')
axis square
grid off
%%
%燃料乙醇+生物质能（价格上）
%AZ
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','AZrenewable1');
x=1960:1:2009;y=1:4;z=cell2mat(data(8:11,2:end));
[x,y]=meshgrid(x,y);
%CA
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','CArenewable1');
x1=1960:1:2009;y1=1:4;z1=cell2mat(data1(8:11,2:end));
[x1,y1]=meshgrid(x1,y1);
%NM
[num2,txt2,data2]=xlsread('E:\Preliminary classification data.xls','NMrenewable1');
x2=1960:1:2009;y2=1:4;z2=cell2mat(data2(8:11,2:end));
[x2,y2]=meshgrid(x2,y2);
%TX
[num3,txt3,data3]=xlsread('E:\Preliminary classification data.xls','TXrenewable1');
x3=1960:1:2009;y3=1:4;z3=cell2mat(data3(8:11,2:end));
[x3,y3]=meshgrid(x3,y3);
%draw
subplot(2,2,1)
surf(x,y,z)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('AZ fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,2)
surf(x1,y1,z1)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('CA fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,3)
surf(x2,y2,z2)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('NM fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,4)
surf(x3,y3,z3)
view(30,30)
shading interp
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('TX fuel ethanol and biomass energy change')
axis square
grid off
%%
%燃料乙醇+生物质能（能量上）
%AZ
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','AZrenewable1');
x=1960:1:2009;y=1:8;z=cell2mat(data(12:19,2:end));
[x,y]=meshgrid(x,y);
%CA
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','CArenewable1');
x1=1960:1:2009;y1=1:8;z1=cell2mat(data1(12:19,2:end));
[x1,y1]=meshgrid(x1,y1);
%NM
[num2,txt2,data2]=xlsread('E:\Preliminary classification data.xls','NMrenewable1');
x2=1960:1:2009;y2=1:8;z2=cell2mat(data2(12:19,2:end));
[x2,y2]=meshgrid(x2,y2);
%TX
[num3,txt3,data3]=xlsread('E:\Preliminary classification data.xls','TXrenewable1');
x3=1960:1:2009;y3=1:8;z3=cell2mat(data3(12:19,2:end));
[x3,y3]=meshgrid(x3,y3);
%draw
subplot(2,2,1)
surf(x,y,z)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('AZ fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,2)
surf(x1,y1,z1)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('CA fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,3)
surf(x2,y2,z2)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('NM fuel ethanol and biomass energy change')
axis square
grid off

subplot(2,2,4)
surf(x3,y3,z3)
view(30,30)
shading interp
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('TX fuel ethanol and biomass energy change')
axis square
grid off