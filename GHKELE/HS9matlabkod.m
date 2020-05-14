clc
close all
clear all
%HS9 feladathoz
K=273.15; %K
T1=140+K; %K
T2=50+K; %K
D1=1.2 ; %m
D2=1.4 ; %m
%% megjelenit�shez �lland�k
xmin=1.2;
xmax=1.4;
ymin=25;
ymax=150;

%%
dx=(D1:0.001:D2);
%M=size(dx);
Edx=1./dx;
Tx=T1-((T1-T2)/(1./D1-1./D2))*(1./D1-Edx);
TxC=Tx-K;
plot(dx,TxC)
legend("H�m�rs�klet a hely f�ggv�ny�ben")
xlabel("                       �stfal[m]                                                                          .")
ylabel("        H�m�rs�klet [ ^oC]         ")
grid minor
axis ([xmin xmax ymin ymax])
set(gca,'Units','normalized','XTick',xmin:0.025:xmax,'YTick',ymin:25:ymax,'Fontunits', 'points','FontWeight','normal','Fontsize',12,'FontName','Time');
legend('H�m�rs�klet a hely f�ggv�ny�ben','location','best');
print -depsc homersekletfuggvenyHS9