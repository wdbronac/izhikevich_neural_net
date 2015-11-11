%dessin de différentes courbes FR=f(I) selon la taille de la fenêtre

B=[100:100:600];
InitRegularSpiking;

for k=1:length(B)
    
VI=(0:2:100);
VFR=eye(1,length(VI));

for i = 1 : length(VI)
    I=VI(i);
    
T=[0:Te:(N-1)*Te];
L=length(T);
Tf=B(k);
[V,A]= ModeleNeuronalIntensiteEchelon(a,b,c,d,I,100,Te,Ts);
FR=FiringRatePourUnNeurone(A,Te,Ts,Tf);
T1=[0:Te:((L-floor(Tf/Te))-1)*Te];
VFR(i)=sum(FR(floor(length(FR)/2):length(FR)))/(length(FR)-floor(length(FR)/2));%moyennage des dernières valeurs de FR pour annuler les oscillations

end
 
plot(VI,VFR,'Color',[1 1-1/sqrt(k) 1/sqrt(k)])
hold on
end