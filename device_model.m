
temp=1:1:10;
cc=linspace(0.00000025,0.0000045,100);
aa=linspace(0.00005,0.0005,100);

for i=1:length(aa)
a=aa(i);
b=0.0001/2/0.5;
c=cc(i);
d=11;
x=0:0.01:0.5;
cury=a*x+b*x.^2+c*(exp(d*x)-1);
figure(3)
plot(x,cury,'o');
figure(2)
plot(x,cury./x,'o')
temp1=cury(1:end-1);
temp2=cury(2:end);
x1=x(1:end-1);
x2=x(2:end);
figure(1)
plot((x1+x2)/2,(temp1-temp2)./(x1-x2),'o')
end

% 
% for i=1:10000
%     input=rand(1,8);
%     Rstate=rand(1,8);
%     
%     theory=sum(input.*Rstate);
    