clear all;
close all;
clc;
% dB=[-10:-10:-60]


dB=[-35:-5:-100];

for xixi=1:length(dB)

    
 
bfb=10.^(dB(xixi)/20);
 if xixi==length(dB)
    bfb=0;
 end
 
 
 for uu=1:90
     tname=['error',num2str(uu)];
     uuu=uu/10;
    daertav=1e-3*2^uuu;
    
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
input0=rand(1,32)*daertav;
input=input0+0.2;
Thoutput2(text)=sum(input0.*DCond);
Reoutput2(text)=sum(a.*input+b.*input.^2+c.*(exp(d.*input)-1).*normrnd(1,bfb,1,32)-curat02);
Reoutput2(text)=Reoutput2(text);

eval([tname,'(text)=abs(Thoutput2(text)./Reoutput2(text)-1);']);
    end

    
 end




for ii=1;9
    figure(8)
histfit(eval(['error',num2str(ii*10)]),10);
hold on;
end

alpha(0.3)
set(gca,'xscale','log')
set(gca,'ylim',[0,400])
set(gca,'linewidth',1)

for ii=1:90;
    tempname=['error',num2str(ii)];
    mm(ii)=mean(eval(tempname));
    uu(ii)=std(eval(tempname));
end

 x = 1e-3*2.^((1:90)/10);

    loglog(x,mm);    
                  
y = mm;

xconf = [x, x(end:-1:1)];         
yconf = [y+uu, y(end:-1:1)-uu(end:-1:1)];

figure (5)
hold on
p = fill(xconf,yconf,'red');


p.FaceColor = [1 0.8 0.8];      
p.EdgeColor = 'none';           
alpha(0.2)
plot(x,y,'o-')

set(gca,'xscale','log','yscale','log')
data5(xixi,1)=dB(xixi);
data5(xixi,2)=x(find(y==min(y)));
% 
if xixi==2 |xixi==4 |xixi==6 | xixi==length(dB)
    for ii=1:90;
    tempname=['error',num2str(ii)];
    mm(ii)=mean(eval(tempname));
    uu(ii)=std(eval(tempname));
    end
outputdatauu{xixi}=uu;

 x = 1e-3*2.^((1:90)/10);

    loglog(x,mm);    
                  
y = mm;

xconf = [x, x(end:-1:1)] ;         
yconf = [y+uu, y(end:-1:1)-uu(end:-1:1)];

figure (55)
hold on

outputdatax{xixi}=xconf;
outputdatay{xixi}=yconf;
p = fill(xconf,yconf,'red');
p.FaceColor = [1 0.8 0.8];      
p.EdgeColor = 'none';           
alpha(0.2)
plot(x,y,'o-')

set(gca,'xscale','log','yscale','log')

     
end

end
