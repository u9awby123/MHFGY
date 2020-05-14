clc
close all
clear all
%HS9 feladathoz
K=273.15; %K
T1=140+K; %K
T2=50+K; %K
D1=1.2 ; %m
D2=1.4 ; %m
%% megjelenitéshez állandók
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
legend("Hõmérséklet a hely függvényében")
xlabel("                       Üstfal[m]                                                                          .")
ylabel("        Hõmérséklet [ ^oC]         ")
grid minor
axis ([xmin xmax ymin ymax])
set(gca,'Units','normalized','XTick',xmin:0.025:xmax,'YTick',ymin:25:ymax,'Fontunits', 'points','FontWeight','normal','Fontsize',12,'FontName','Time');
legend('Hõmérséklet a hely függvényében','location','best');
print -depsc homersekletfuggvenyHS9