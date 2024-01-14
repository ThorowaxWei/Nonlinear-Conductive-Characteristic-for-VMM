clear all;
close all;
clc;
for jj=1:1:20
numberS=64*jj*10;
varyingV=0.01;
for text=1:10000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,numberS);
a=aa(temp);
c=cc(temp);
x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,numberS)*varyingV;
input=input0+0.2;
Thoutput(text)=sum(input0.*DCond);
Reoutput(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);
error(text)=Thoutput(text)./Reoutput(text)-1;
errorstd(jj)=std(error);
errormean(jj)=mean(error);
end
end