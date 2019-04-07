clc,clear;
SumData1=xlsread('会员信息数据','1-5公里');
% SumData1=xlsread('会员信息数据','3-15公里');
wcl=SumData1(:,5);num_rw=SumData1(:,2);jg=SumData1(:,3);
w=[1.5,1.4,1.3,1.2,1.1,0.95,0.9,0.85,0.8,0.75]';
w1=[0.7,0.9,1.05,1.25]';
for i=1:length(wcl)
 if(wcl(i)>0&&wcl(i)<=10)
     w0=w(5);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>10&&wcl(i)<=20) 
     w0=w(2);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>20&&wcl(i)<=30) 
     w0=w(3);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>30&&wcl(i)<=40) 
     w0=w(4);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>40&&wcl(i)<=50) 
     w0=w(5);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>50&&wcl(i)<=60) 
     w0=w(6);new_jg0(i)=w0*jg(i); 
 end
 if(wcl(i)>60&&wcl(i)<=70) 
     w0=w(7);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>70&&wcl(i)<=80) 
     w0=w(8);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>80&&wcl(i)<=90) 
     w0=w(9);new_jg0(i)=w0*jg(i);
 end
 if(wcl(i)>90&&wcl(i)<=100) 
     w0=w(10);new_jg0(i)=w0*jg(i);
 end
end
%尽量控制任务数量不超过50个，时间过长
for i=1:length(num_rw)
 if(num_rw(i)>0&&num_rw(i)<=10) 
     w2=w1(1); new_jg1(i)=w2*jg(i);
 end
 if(num_rw(i)>10&&num_rw(i)<=30) 
     w2=w1(2); new_jg1(i)=w2*jg(i);
 end
 if(num_rw(i)>30&&num_rw(i)<=50) 
     w2=w1(3); new_jg1(i)=w2*jg(i);
 end
  if(num_rw(i)>50&&num_rw(i)<=60) 
     w2=w1(3); new_jg1(i)=w2*jg(i);
 end
end
new_jg=new_jg0+new_jg1;