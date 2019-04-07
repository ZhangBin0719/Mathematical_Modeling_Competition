clc
clear
syms a b;
c=[a b]';
[num,txt,raw]=xlsread('C:\TXpre data.xls','251-500');
%%
G1=zeros(100,250);
for m=1:250
    m
    A=num(:,m);
    B=cumsum(A); 
    n=length(A);
    for i=1:(n-1)
       C(i)=(B(i)+B(i+1))/2;  
    end
    
    D=A;D(1)=[];
    E=[-C;ones(1,n-1)];
    c=inv(E*E')*E*D;
    c=c';
    a=c(1);b=c(2);
 
    F=[];F(1)=A(1);
    for i=2:(n+50)                          
       F(i)=(A(1)-b/a)/exp(a*(i-1))+b/a ;
    end
    G=[];G(1)=A(1);
    for i=2:(n+50)                           
        i
       G(i)=F(i)-F(i-1); 
    end 
    G=G';
    G1(1:100,m)=G;
   
end

for i=1:n
    for j=1:m
        epsilon(i,j)=num(i,j+1)-G1(i,j); 
        delta(i,j)=abs(epsilon(i,j)./(num(i,j))') ;
       
    end
end
xlswrite('C:\ epsilon251-500.xls',epsilon,'sheet1')
xlswrite('C:\delta251-500.xls',delta,'sheet1')
 S=sum(( epsilon).^2);  
 xlswrite('C:\ S251-500.xls',S,'sheet1')       
xlswrite('C:\251-500.xls',G1)

%rho(m)=1-(1-0.5*a)/(1+0.5*a)*C;
t1=1960:2009;
t2=1960:2059;
G, a, b % 输出预测值，发展系数和灰色作用量

%plot(t1,A,'o',t2,G)  %原始数据与预测数据的比较