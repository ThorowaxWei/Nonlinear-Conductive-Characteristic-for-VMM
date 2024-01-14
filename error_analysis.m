clear all;
close all;
clc;
for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);
x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.256;
input=input0+0.2;
Thoutput2(text)=sum(input0.*DCond);
Reoutput2(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);
error1(text)=Thoutput2(text)./Reoutput2(text)-1;
end


for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);
x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.128;
input=input0+0.2;
Thoutput2(text)=sum(input0.*DCond);
Reoutput2(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);
error2(text)=Thoutput2(text)./Reoutput2(text)-1;
end

for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);
x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.064;
input=input0+0.2;
Thoutput3(text)=sum(input0.*DCond);
Reoutput3(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);
error3(text)=Thoutput3(text)./Reoutput3(text)-1;
end

for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);

x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.032;
input=input0+0.2;
Thoutput4(text)=sum(input0.*DCond);
Reoutput4(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);

error4(text)=Thoutput4(text)./Reoutput4(text)-1;
end
for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);

x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.016;
input=input0+0.2;
Thoutput4(text)=sum(input0.*DCond);
Reoutput4(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);

error5(text)=Thoutput4(text)./Reoutput4(text)-1;
end
for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);

x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.008;
input=input0+0.2;
Thoutput4(text)=sum(input0.*DCond);
Reoutput4(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);

error6(text)=Thoutput4(text)./Reoutput4(text)-1;
end
for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);

x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.004;
input=input0+0.2;
Thoutput4(text)=sum(input0.*DCond);
Reoutput4(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);

error7(text)=Thoutput4(text)./Reoutput4(text)-1;
end
for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);

x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.002;
input=input0+0.2;
Thoutput4(text)=sum(input0.*DCond);
Reoutput4(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);

error8(text)=Thoutput4(text)./Reoutput4(text)-1;
end
for text=1:1000
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);
b=0.0001/2/0.5;
d=11;
temp=randi([1 100],1,32);
a=aa(temp);
c=cc(temp);

x=0.2;
curat02=a.*x+b.*x.^2+c.*(exp(d.*x)-1);
DCond=a+2*b.*x+c.*d.*exp(d.*x);
Cond=curat02/x;
input0=rand(1,32)*0.001;
input=input0+0.2;
Thoutput4(text)=sum(input0.*DCond);
Reoutput4(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1)-curat02);

error9(text)=Thoutput4(text)./Reoutput4(text)-1;
end
figure
subplot(4,1,1)
hist(error1,20)
subplot(4,1,2)
hist(error2,20)
subplot(4,1,3)
hist(error3,20)
subplot(4,1,4)
hist(error4,20)
figure
histfit(-error1,10)
hold on;
histfit(-error2,10)
histfit(-error3,10)
histfit(-error4,10)
histfit(-error5,10)
histfit(-error6,10)
histfit(-error7,10)
histfit(-error8,10)
histfit(-error9,10)
alpha(0.3)
set(gca,'xscale','log')
set(gca,'ylim',[0,400])
set(gca,'linewidth',1)

for ii=1:9;
    tempname=['-error',num2str(ii)];
    mm(ii)=mean(eval(tempname));
    uu(ii)=std(eval(tempname));
end
figure
    loglog([256,128,64,32,16,8,4,2,1],mm)
    
    x = [256,128,64,32,16,8,4,2,1]                  
y = mm;

xconf = [x, x(end:-1:1)] ;         
yconf = [y+uu, y(end:-1:1)-uu(end:-1:1)];

figure
p = fill(xconf,yconf,'red');
p.FaceColor = [1 0.8 0.8];      
p.EdgeColor = 'none';           
hold on
plot(x,y,'ro-')
hold off
set(gca,'xscale','log','yscale','log')



