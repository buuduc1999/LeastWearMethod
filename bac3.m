function bac3(X,Y)
i1=length(X);
i2=sum(X);
i3=sum(X.^2);
j1=sum(X);
j2=sum(X.^2);
j3=sum(X.^3);
k1=sum(X.^2);
k2=sum(X.^3);
k3=sum(X.^4);
resu=[sum(Y);X*Y';(X.^2)*Y']; %ma tran ben ve ben phai
mt=[i1 i2 i3;j1 j2 j3;k1 k2 k3];
ketqua=inv(mt)*resu; %inv la nghich dao cua ma tran
fprintf('Xap xi ham bac 3:')
A=double(ketqua(1))
B=double(ketqua(2))
C=double(ketqua(3))
%% ve do thi
figure
plot(X,Y,'.','markersize',20)
hold on
syms x
y=A+B*x+C*(x.^2);
plot(X,A+B*X+C*(X.^2))
title(strcat('y=',char(y)))