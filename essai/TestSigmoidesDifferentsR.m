%Test Sigmoïdes différentes valeurs de R Interconnection


InitRegularSpiking

%connection à peu près aléatoire
M=random('bino',1,1/2,50,50);
for i=1:6
    if M(i,i)==1
        M(i,i)=0;
    end
end
R=[0.005:0.005:0.05];
Te=0.02;
Ts=1000;
N=Ts/Te;
Tf=500;
I0=5;
B=I0+[5:5:500];%vecteur des I
tstep=30;
for k=1:length(R)   
     [B,FRfinal]=SigmoideInterconnectionToutOuRien(B,R(k),M,tstep,Te,Ts,Tf);
     plot(B,FRfinal,'Color',[1 1-1/k 1/k]);
     hold on
end