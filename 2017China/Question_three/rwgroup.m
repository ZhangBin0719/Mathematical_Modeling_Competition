%寻找任务发布集中地地方
clear,clc
SumData1=xlsread('Data','总');
y1=SumData1(:,1);x1=SumData1(:,2);z1=SumData1(:,3);q1=SumData1(:,4);
n1=length(x1);sum=0;
sum0=zeros(1,835);
for i=1:n1
    for j=i+1:n1
        distance(i,j)=fun(x1(i),y1(i),x1(j),y1(j));
        distance(j,i)=fun(x1(i),y1(i),x1(j),y1(j));
    end
end

for k=1:20   %1公里到20公里
  for i=1:n1
     for j=i+1:n1
        if(find(distance(i,j)<k)) sum=sum+1;end
        sum0(k,i)=sum;
     end
     sum=0;
  end
end
sum0=sum0';
mx=max(sum0);%mn=min(sum0);
for i=1:19
    delta(i)=mx(i+1)-mx(i);
end

%公里数为3、6、9、12、15(我们发现任务开始时间为6:30-8:30之间，遵从上班规律以及拍照的概率)
index1=find(sum0(:,3)>4/5*mx(3));jg1=z1(index1);wc1=q1(index1);rw1=sum0(index1,3);

index2=find(sum0(:,6)>4/5*mx(6));jg2=z1(index2);wc2=q1(index2);rw2=sum0(index2,6);
index3=find(sum0(:,9)>4/5*mx(9));jg3=z1(index3);wc3=q1(index3);rw3=sum0(index3,9);
% index4=find(sum0(:,12)>4/5*mx(12));jg4=z1(index4);wc4=q1(index4);rw4=sum0(index4,12);
% index5=find(sum0(:,15)>4/5*mx(15));jg5=z1(index5);wc5=q1(index5);rw5=sum0(index5,15);