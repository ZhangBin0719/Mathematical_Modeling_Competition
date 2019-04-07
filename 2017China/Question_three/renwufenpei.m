%任务分配，假定会员都愿意去做
clear,clc
SumData1=xlsread('Data','总');
jg=SumData1(:,3);
SumData2=xlsread('附件一与附件二联系','sheet1');
SumData3=xlsread('会员信息数据','sheet1');
x1=SumData2(:,1);y1=SumData2(:,2);%x1表示任务位置,y1表示用户位置
y1( find(y1==0))=[];
x1( find(y1==0))=[];  
%确定会员周边的任务数，一个任务一个人做，一个人可能做多个任务
sum=0;n1=length(y1);
for i=1:n1
    for j=i+1:n1
        if(y1(i)==y1(j)) sum=sum+1;end
        sum0(i)=sum;
    end
         sum=0;
end
kxz=y1(find(sum0>1));
bkxz=y1(find(sum0>1));
%根据信誉

for i=1:length(kxz)
    
end

%根据预定限额
