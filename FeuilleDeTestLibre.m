%feuille de test libre

% feuille de test: Calcul du Firing Rate pour une population neuronale

InitRegularSpiking

%connection à peu près aléatoire
M=random('bino',1,1/2,6,6);
for i=1:6
    if M(i,i)==1
        M(i,i)=0;
    end
end
R=5;
Te=0.05;
Ts=1000;
N=Ts/Te;
Tf=500;
T=[0:Te:(N-1)*Te];
[V,A]=NeuronePourInterconnection(0.02,0.2,-65,8,50,100,Te,Ts,M,R);