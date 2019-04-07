%%
clc
clear
%AZ
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','AZrenewable1');
x=1960:1:2009;y=1:12;z=cell2mat(data(21:32,2:end));
[x,y]=meshgrid(x,y);
%CA
[num1,txt1,data1]=xlsread('E:\Preliminary classification data.xls','CArenewable1');
x1=1960:1:2009;y1=1:12;z1=cell2mat(data1(21:32,2:end));
[x1,y1]=meshgrid(x1,y1);
%NM
[num2,txt2,data2]=xlsread('E:\Preliminary classification data.xls','NMrenewable1');
x2=1960:1:2009;y2=1:12;z2=cell2mat(data2(21:32,2:end));
[x2,y2]=meshgrid(x2,y2);
%TX
[num3,txt3,data3]=xlsread('E:\Preliminary classification data.xls','TXrenewable1');
x3=1960:1:2009;y3=1:12;z3=cell2mat(data3(21:32,2:end));
[x3,y3]=meshgrid(x3,y3);
%draw
subplot(2,2,1)
surf(x,y,z)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('AZ Geothermal, solar, and electric power (part) energy change')
axis square
grid off

subplot(2,2,2)
surf(x1,y1,z1)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('CA Geothermal, solar, and electric power (part) energy change')
axis square
grid off

subplot(2,2,3)
surf(x2,y2,z2)
view(30,30)
shading interp
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('NM Geothermal, solar, and electric power (part) energy change')
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
title('TX Geothermal, solar, and electric power (part) energy change')
axis square
grid off