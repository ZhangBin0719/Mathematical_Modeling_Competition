%%
%第一部分A，我们将分类得到的四州在可再生资源上进行分类，分出水电、燃料乙醇、地热、太阳能、生物质能、风能去讨论
clc
clear
%%
%CA
[num,txt,data]=xlsread('E:\Preliminary classification data.xls','CArenewable1');
%燃料乙醇+生物质能
%数量
x=1960:1:2009;y=1:6;z=cell2mat(data(2:7,2:end));
[x,y]=meshgrid(x,y);
figure(1)
%title('California renewable resources fuel ethanol and biomass energy changes with the annual trend (quantity,energy,price)')
subplot(2,3,1)
surf(x,y,z)
view(30,30)
shading interp
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Thousand barrels')
title('California renewable resource fuel ethanol and biomass energy change with annual variation (quantity),1-6 represent EMTCP, ENACP, ENCCP, ENICP, ENPRP, ENTCP')
axis square
grid off
%价格
x=1960:1:2009;y=1:4;z=cell2mat(data(8:11,2:end));
[x,y]=meshgrid(x,y);
subplot(2,2,2)
surf(x,y,z)
view(30,30)
shading interp
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Million dollars')
title('California renewable resource fuel ethanol and biomass energy change with annual variation (price), 1-4 representing EMACV, EMCCV, EMICV, EMTCV')
axis square
grid off
%能量
x=1960:1:2009;y=1:8;z=cell2mat(data(12:19,2:end));
[x,y]=meshgrid(x,y);
subplot(2,2,3)
surf(x,y,z)
view(30,30)
shading interp
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Million Btu per barrel/Billion Btu')
title('California renewable resources fuel ethanol and biomass energy changes with the annual trend (energy), of which first ENTCK units are Million Btu per barrel')
axis square
grid off

%地热+太阳能+电力（部分）
%能量
x=1960:1:2009;y=1:12;z=cell2mat(data(21:32,2:end));
[x,y]=meshgrid(x,y);
figure(2)
surf(x,y,z)
view(30,30)
shading interp
title('California renewable resource Geothermal, solar, and electric power (part) energy changes with the annual trend (energy), of which first ENTCK units are Million Btu per barrel')
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Million Btu per barrel/Billion Btu')
axis square
grid off

%风能+水电+电力（部分）
%能量
x=1960:1:2009;y=1:11;z=cell2mat(data(35:45,2:end));
[x,y]=meshgrid(x,y);
figure(3)
surf(x,y,z)
view(30,30)
shading interp
title('California the trend of wind, hydropower and electricity (part) of renewable resources (energy)')
%colormap('spring')
xlabel('year')
ylabel('MSN')
zlabel('Million Btu per barrel/Billion Btu')
axis square
grid off
