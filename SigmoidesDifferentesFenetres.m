%Obtention de plusieurs sigmoïde pour différents temps de fenêtres
 
B=[100:100:600];%différents temps de fenêtre
initneuro;

for k=1:length(B)
    
    
   
VI=(0:50:100);
VFR=eye(1,length(VI));
for i = 1 : length(VI)
    I=i;
    
T=[0:Te:(N-1)*Te];
L=length(T);
Tf=B(k);
[V,A]=lastchancefaux(a,b,c,d,i,100,Te,Ts);
FR=firingRatelastchance2(A,Te,T,Tf);
T1=[0:Te:((L-floor(Tf/Te))-1)*Te];
VFR(i)=max(FR);
end
plot(VI,VFR,'Color',[1 1-1/k 1/k])
hold on

end

