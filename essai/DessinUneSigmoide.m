%dessin d'une sigmoïde pour un modèle Regular Spiking
InitRegularSpiking
T=[0:Te:(N-1)*Te];
L=length(T);
Tf=300;
[V,A]=ModeleNeuronalIntensiteEchelon(a,b,c,d,I,100,Te,Ts);
FR=FiringRatePourUnNeurone(A,Te,T,Tf);
T1=[0:Te:((L-floor(Tf/Te))-1)*Te];
figure
plot(T1,FR);