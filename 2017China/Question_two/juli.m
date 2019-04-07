%计算完成与未完成之间的最短距离，价格的差距
clear,clc
SumData1=xlsread('gps1','sheet1');
SumData2=xlsread('gps2','sheet1');
x1=SumData1(:,1);y1=SumData1(:,2);z1=SumData1(:,3);
x2=SumData2(:,1);y2=SumData2(:,2);z2=SumData2(:,3);
n1=length(x1);n2=length(x2);
sum0=0;sum1=0;
for i=1:n1
    for j=1:n2
        sum(i,j)=sqrt((x1(i)-x2(j)).^2+(y1(i)-y2(j)).^2);
    end
end
format long
minx1=min(sum);
minx2=min(sum');%完成点与未完成的最短距离

i=1;
while(i<523)
    index2(1:2,i)=find(sum(i,:)==minx2(i));
    if(i==64||i==78||i==95||i==102||i==139||i==146||i==159||i==166||i==185||i==190||i==193||...
        i==202) i=i+1;end
    if(i==182) i=i+2;end
    if(i==67) i=i+4;end
    if(i==72) i=i+5;end
    i=i+1;
end
index2(1:2,65)=[158;160];index2(1:2,79)=[158;160];index2(1:2,96)=[118;169];index2(1:2,103)=[118;169];
index2(1:2,140)=[125,132];index2(1:2,147)=[125,132];index2(1:2,160)=[125,132];index2(1:2,167)=[118;169];
index2(1:2,186)=[118;169];index2(1:2,191)=[118;169];index2(1:2,194)=[118;169];index2(1:2,203)=[118;169];
index2(1:2,183)=[158;160];index2(1:2,184)=[158;160];
index2(1:2,68)=[158;160];index2(1:2,69)=[158;160];index2(1:2,70)=[158;160];index2(1:2,71)=[118;169];
index2(1:2,73)=[158;160];index2(1:2,74)=[158;160];index2(1:2,75)=[158;160];index2(1:2,76)=[158;160];index2(1:2,77)=[158;160];
%
Data1=SumData1(:,3);
Data2=SumData2(:,3);
for i=1:length(index2)
    if(i==65||i==79||i==96||i==103||i==140||i==147||i==160||i==167||i==186||i==191||i==194||...
        i==206||i==183||i==184||i==68||i==69||i==70||i==71||i==73||i==74||i==75||i==76||i==77)
    cha(2,i)=Data1(index2(2,i))-Data2(index2(2,i));%距离接近下，未完成与完成的价格差值,可用于调整，使得任务被完成
    end
    cha(1,i)=Data1(index2(1,i))-Data2(index2(1,i));
end
index=find(cha(1,:)<0);%找出价格差为正值，提价至正常水平
index1=find(cha(2,:)<0);
c1=cha(1,index);c2=cha(2,index1);
for i=1:length(index) sum0=sum0+c1(i); end
for i=1:length(index1) sum1=sum1+c2(i); end
sum=sum0+sum1