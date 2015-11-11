function [V,A]  = ModeleNeuronalIntensiteQuelconque(a,b,c,d,I,Te,Ts)
N=Ts/Te;
A=zeros(1,N);
T=[0:Te:(N-1)*Te];
V=[-65];
U=[b*V(1)];
for k=1:N-1
    V(k+1)=V(k)+Te*(0.04*V(k)^2+5*V(k)+140-U(k)+I(k));
    U(k+1)=U(k)+Te*a*(b*V(k)-U(k));
    
    if V(k+1)>=30
        V(k+1)=c;
        U(k+1)=U(k+1)+d;
        A(k+1)=1;
    end

end
%figure
%plot(T,V,'magenta')
% hold on
% plot(T,U,'red')
