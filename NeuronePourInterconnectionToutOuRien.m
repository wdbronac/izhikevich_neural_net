%Modèle de neurones pour une interconnection "V positif ou rien"

function [V,A]  = NeuronePourInterconnectionToutOuRien(a,b,c,d,j,tstep,Te,Ts,M,R )

%Il s'agit ici d'un échelon
%j: intensité de l'échelon
%tstep: temps de l'échelon
%Remarque: l'échelon dure jusqu'à la fin
%M:matrice d'interconnection
%R: résistance d'interconnection



n=length(M); %nombre de neurones
N=Ts/Te; %nombre de points calculés
A=zeros(n,N);
T=[0:Te:(N-1)*Te];
I=[];
Tstep=Te*floor(tstep/Te); %construction de l'échelon I 
for k=1:Tstep/Te
    I(k)=0;
end
for k=Tstep/Te+1:N
    I(k)=j;
end
v0=-65;             %création des vecteurs initiaux
u0=b*v0;            %
V=zeros(n,N);       %
U=zeros(n,N);       %
V(:,1)=v0;          %
U(:,1)=u0;          %
%I=zeros(n,N);%création d'une matrice I d'impulsion
%I(1,1)=j;

for k=1:N-1
    V1=V;
    for i=1:n
        if V1(i,k)<=0
            V1(i,k)=0;
        end
    end
    for i=1:n
        S=sum(V1(:,k).*M(:,i)/R);
        V(i,k+1)=V(i,k)+Te*(0.04*V(i,k)^2+5*V(i,k)+140-U(i,k)+I(k)+S);
        U(i,k+1)=U(i,k)+Te*a*(b*V(i,k)-U(i,k));
    
        if V(i,k+1)>=30
            V(i,k+1)=c;
            U(i,k+1)=U(i,k+1)+d;
            A(i,k+1)=1;
        end
    end

end
for i=1:n
    figure
    plot(T,V(i,:),'magenta')
 end
% hold on
% plot(T,U,'red')
