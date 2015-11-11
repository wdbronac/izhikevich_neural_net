%Test Sigmoïdes différentes valeurs de R Interconnection


InitRegularSpiking

%connection à peu près aléatoire
M=random('bino',1,1/2,15,15);
for i=1:6
    if M(i,i)==1
        M(i,i)=0;
    end
end
R=[5:5:15];
Te=0.2;
Ts=1000;
N=Ts/Te;
Tf=500;
I0=50;
B=I0+[20:20:500];%vecteur des I
tstep=30;
for k=1:length(R)   
     [B,FRfinal]=SigmoideInterconnection(B,R(k),M,tstep,Te,Ts,Tf);
     plot(B,FRfinal,'Color',[1 1-1/k 1/k]);
     hold on
end