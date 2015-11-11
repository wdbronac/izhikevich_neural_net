% Firing Rate pour une population de neurones

%A(i,j): matrice des vecteurs A (indicateurs de spikes) calculée dans NeuronePourInterconnection

function FR=FiringRatePopulation(A,Te,Ts,Tf)
n=length(A(:,1));
N=Ts/Te;
FiringRatePartiel=zeros(n,N-floor(Tf/Te));

for k=1:n
    FiringRatePartiel(k,:)=FiringRatePourUnNeurone(A(k,:),Te,Ts,Tf); % calcul de chaque Firing Rate
end

FR=zeros(1,N-floor(Tf/Te));
for t=1:N-floor(Tf/Te)
    FR(t)=sum(FiringRatePartiel(:,t))/n; %calcul du FR moyen de la population
end

T1=[0:Te:((N-floor(Tf/Te))-1)*Te];%vecteur temps adapté en taille
%plot(T1,FR) %tracé de la courbe

