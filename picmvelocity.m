clear;
v=load('平均速度.dat');
y=load('平均速度.txt');
subplot(1,2,1);
plot(v,y(:,1),'bx');
y(:,1)=log10(y(:,1));
subplot(1,2,2);
plot(v,y(:,1),'rx');