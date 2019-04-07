%绘制各区
%%
%深圳市
SumData1=xlsread('Data','深圳1');
SumData2=xlsread('Data','深圳0');
x1=SumData1(:,1);y1=SumData1(:,2);z1=SumData1(:,3);
x2=SumData2(:,1);y2=SumData2(:,2);z2=SumData2(:,3);
[xi1,yi1]=meshgrid(linspace(min(x1),max(x1),100),linspace(min(y1),max(y1),100));
[xi2,yi2]=meshgrid(linspace(min(x2),max(x2),100),linspace(min(y2),max(y2),100));
zi1=griddata(x1,y1,z1,xi1,yi1,'v4');
zi2=griddata(x2,y2,z2,xi2,yi2,'v4');
figure(1)
surf(xi1,yi1,zi1);
shading interp %去除网格
hold on
surf(xi2,yi2,zi2);
xlabel('纬度/°','fontsize',10)
ylabel('经度/°','fontsize',10)
zlabel('价格','fontsize',10)
title('深圳市任务完成情况(无网格代表完成，有网格代表未完成)','fontsize',10)
%%
%佛山市
SumData1=xlsread('Data','佛山1');
SumData2=xlsread('Data','佛山0');
x1=SumData1(:,1);y1=SumData1(:,2);z1=SumData1(:,3);
x2=SumData2(:,1);y2=SumData2(:,2);z2=SumData2(:,3);
[xi1,yi1]=meshgrid(linspace(min(x1),max(x1),100),linspace(min(y1),max(y1),100));
[xi2,yi2]=meshgrid(linspace(min(x2),max(x2),100),linspace(min(y2),max(y2),100));
zi1=griddata(x1,y1,z1,xi1,yi1,'v4');
zi2=griddata(x2,y2,z2,xi2,yi2,'v4');
figure(2)
surf(xi1,yi1,zi1);
shading interp %去除网格
hold on
surf(xi2,yi2,zi2);
xlabel('纬度/°','fontsize',10)
ylabel('经度/°','fontsize',10)
zlabel('价格','fontsize',10)
title('佛山市任务完成情况(无网格代表完成，有网格代表未完成)','fontsize',10)
%%
%广州市
SumData1=xlsread('Data','广州1');
SumData2=xlsread('Data','广州0');
x1=SumData1(:,1);y1=SumData1(:,2);z1=SumData1(:,3);
x2=SumData2(:,1);y2=SumData2(:,2);z2=SumData2(:,3);
[xi1,yi1]=meshgrid(linspace(min(x1),max(x1),100),linspace(min(y1),max(y1),100));
[xi2,yi2]=meshgrid(linspace(min(x2),max(x2),100),linspace(min(y2),max(y2),100));
zi1=griddata(x1,y1,z1,xi1,yi1,'v4');
zi2=griddata(x2,y2,z2,xi2,yi2,'v4');
figure(3)
surf(xi1,yi1,zi1);
shading interp %去除网格
hold on
surf(xi2,yi2,zi2);
xlabel('纬度/°','fontsize',10)
ylabel('经度/°','fontsize',10)
zlabel('价格','fontsize',10)
title('广州市任务完成情况(无网格代表完成，有网格代表未完成)','fontsize',10)