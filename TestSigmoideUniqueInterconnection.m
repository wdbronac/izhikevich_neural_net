%feuille de test Sigmoide Unique Interconnection


InitRegularSpiking

%connection à peu près aléatoire
M=random('bino',1,1/2,6,6);
for i=1:6
    if M(i,i)==1
        M(i,i)=0;
    end
end
R=5;
Te=0.5;
Ts=5000;
N=Ts/Te;
Tf=500;
I0=50;
B=I0+[50:20:500];%vecteur des I
tstep=100;

[B,FRfinal]=SigmoideInterconnection(B,R,M,tstep,Te,Ts,Tf);
plot(B,FRfinal);