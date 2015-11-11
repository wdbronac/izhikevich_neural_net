%TestSigmoideDifferentesConnections

InitRegularSpiking

%connection à peu près aléatoire
M1=random('bino',1,1/2,5,5);
for i=1:5
    if M1(i,i)==1
        M1(i,i)=0;
    end
end;                %aléatoire
M2=ones(5,5)-eye(5);%all to all
M3=[ 0 1 0 0 0 ; 0 0 1 0 0 ; 0 0 0 1 0 ; 0 0 0 0 1; 1 0 0 0 0];%cercle
M4=[ 0 1 0 0 0 ; 0 0 1 0 0 ; 0 0 0 1 0 ; 0 0 0 0 1; 0 0 0 0 0];%cascade

R=10;
Te=0.2;
Ts=1000;
N=Ts/Te;
Tf=500;
I0=50;
B=I0+[20:20:500];%vecteur des I
tstep=30;

[B,FRfinal]=SigmoideInterconnection(B,R,M1,tstep,Te,Ts,Tf);
plot(B,FRfinal,'Color','red');
hold on

[B,FRfinal]=SigmoideInterconnection(B,R,M2,tstep,Te,Ts,Tf);
plot(B,FRfinal,'Color','blue');
hold on

[B,FRfinal]=SigmoideInterconnection(B,R,M3,tstep,Te,Ts,Tf);
plot(B,FRfinal,'Color','green');
hold on

[B,FRfinal]=SigmoideInterconnection(B,R,M4,tstep,Te,Ts,Tf);
plot(B,FRfinal,'Color','black');
hold on