clc
close all
clear all
%HS11 feladathoz
K=273.15; %K
Tsz=50+K; %K Szigetel�s
Tb=20+K; %K Bels�
D1=3 ; %m
D2=3.3 ; %m
%% Megjelenit�shez �lland�k
xmin=2.95;
xmax=3.35;
ymin=10;
ymax=60;
%% Sz�m�t�s
dx=(D1:0.001:D2);
%M=size(dx);
Edx=1./dx;
Tx=Tb-((Tb-Tsz)/(1./D1-1./D2))*(1./D1-Edx);
TxC=Tx-K;
plot(dx,TxC)
legend("H�m�rs�klet a hely f�ggv�ny�ben")
xlabel("                       �stfal[m]                                                                          .")
ylabel("        H�m�rs�klet [^oC]         ")
grid minor
axis ([xmin xmax ymin ymax])
set(gca,'Units','normalized','XTick',xmin:0.05:xmax,'YTick',ymin:10:ymax,'Fontunits', 'points','FontWeight','normal','Fontsize',12,'FontName','Time');
legend('H�m�rs�klet a hely f�ggv�ny�ben','location','best');
print -depsc homersekletfuggvenyHS11



