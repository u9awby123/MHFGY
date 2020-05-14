clc
close all
clear all
%HS11 feladathoz
K=273.15; %K
Tsz=50+K; %K Szigetelés
Tb=20+K; %K Belsõ
D1=3 ; %m
D2=3.3 ; %m
%% Megjelenitéshez állandók
xmin=2.95;
xmax=3.35;
ymin=10;
ymax=60;
%% Számítás
dx=(D1:0.001:D2);
%M=size(dx);
Edx=1./dx;
Tx=Tb-((Tb-Tsz)/(1./D1-1./D2))*(1./D1-Edx);
TxC=Tx-K;
plot(dx,TxC)
legend("Hõmérséklet a hely függvényében")
xlabel("                       Üstfal[m]                                                                          .")
ylabel("        Hõmérséklet [^oC]         ")
grid minor
axis ([xmin xmax ymin ymax])
set(gca,'Units','normalized','XTick',xmin:0.05:xmax,'YTick',ymin:10:ymax,'Fontunits', 'points','FontWeight','normal','Fontsize',12,'FontName','Time');
legend('Hõmérséklet a hely függvényében','location','best');
print -depsc homersekletfuggvenyHS11



