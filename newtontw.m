clear;
u=load('平均速度.dat');
y=load('平均速度.txt');
for i=1:117
E=1e-6;   
us=0.47131;
a=y(i,1);
b=u(i);
for n=1:20
us=us-(2.45*log(us*a/15/0.001)+5-b/us)/(2.45/us+b/us/us);
if norm(2.45*log(us*a/15/0.001)+5-b/us) < E;
break
end
end
uss(i)=us;
up(i)=b/us;
yp(i)=a*us/15/0.001;
end
up1=up(50:80);
yp1=yp(50:80);
subplot(1,2,1)
plot(y(:,1),uss)
subplot(1,2,2)
plot(yp1,up1)
