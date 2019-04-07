
clc
clear
[num,txt,data]=xlsread('E:\greendata.xlsx','Sheet1');
x=num;
[m,n]=size(x);
a=zeros(m,n);
pingfanghe=zeros(n,1);

for j=1:n
    for i=1:m
        pingfanghe(j)=pingfanghe(j)+x(i,j)^2;
    end
end

for i=1:m
    for j=1:n
        a(i,j)=x(i,j)/sqrt(pingfanghe(j));
    end
end
 

zuiyou=zeros(1,n);
zuilie=zeros(1,n);
for j=1:n
    zuiyou(j)=max(a(:,j));
    zuilie(j)=min(a(:,j));
end
 

 Dzuiyou=zeros(1,m);
 Dzuilie=zeros(1,m);
 for i=1:m
     for j=1:n
         Dzuiyou(i)=(zuiyou(j)-a(i,j))^2+Dzuiyou(i);
         Dzuilie(i)=(zuilie(j)-a(i,j))^2+Dzuilie(i);
     end
 end
 for i=1:m
     Dzuiyou(i)=sqrt(Dzuiyou(i));
     Dzuilie(i)=sqrt(Dzuilie(i));
 end
  

 c=zeros(1,m);
 for i=1:m
     c(i)=Dzuilie(i)/(Dzuiyou(i)+Dzuilie(i));
 end
  

 c
 sort(c)
zuiyou1=find(c==max(c)),c(zuiyou1)=0
zuiyou2=find(c==max(c)),c(zuiyou2)=0
zuiyou3=find(c==max(c)),c(zuiyou3)=0
zuiyou4=find(c==max(c)),c(zuiyou4)=0
zuiyou5=find(c==max(c)),c(zuiyou5)=0
zuiyou6=find(c==max(c)),c(zuiyou6)=0
zuiyou7=find(c==max(c)),c(zuiyou7)=0
zuiyou8=find(c==max(c))
%163 532 526 515 540 539 521 520 
%FFTCB TETXB TETCB TEEIB TNTXB TNSCB TEPRB TEPFB

zuilie1=find(c==min(c)),c(zuilie1)=inf
zuilie2=find(c==min(c)),c(zuilie2)=inf
zuilie3=find(c==min(c)),c(zuilie3)=inf
zuilie4=find(c==min(c)),c(zuilie4)=inf
zuilie5=find(c==min(c)),c(zuilie5)=inf
zuilie6=find(c==min(c)),c(zuilie6)=inf
zuilie7=find(c==min(c)),c(zuilie7)=inf
zuilie8=find(c==min(c))
%119 63 64 65 [76,77,179,314,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,447,466,467,468] 36 2 28



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 