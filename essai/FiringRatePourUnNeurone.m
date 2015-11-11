%Calcul du Firing Rate d'un neurone

function FR=FiringRatePourUnNeurone(A,Te,Ts,Tf)

%A: vecteur avec des 1 à chaque spike
%Tf: temps de la fenêtre; celle-ci se déplace et mesure le nombre de spikes
%qu'elle contient
N=Ts/Te;
T=[0:Te:(N-1)*Te];
L=length(T);
FR=zeros(1,L-floor(Tf/Te));
for n=1:L-floor(Tf/Te)
    q=0;
    for i=n:n+floor(Tf/Te)
        if (A(i)==1)
            q=q+1;
        end
    end
FR(n)=q/(Tf);
end;
  

