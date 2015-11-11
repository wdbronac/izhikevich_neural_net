%dessin de la sigmoide pour l'interconnection
%attention aux arguents dans NeuronePourInterconnection: Il est dit qu'on
%utilise un regular spiking


function [B,FRfinal]=SigmoideInterconnection(B,R,M,tstep,Te,Ts,Tf)
l=length(B);
FRfinal=zeros(1,l);
for k=1:l
   [V,A]=NeuronePourInterconnection(0.02,0.2,-65,8,B(k),tstep,Te,Ts,M,R);
   FR=FiringRatePopulation(A,Te,Ts,Tf);
   FRfinal(k)=sum(FR(floor(length(FR)/2):length(FR)))/(length(FR)-floor(length(FR)/2));%moyennage des dernières valeurs de FR pour annuler les oscillations
end
