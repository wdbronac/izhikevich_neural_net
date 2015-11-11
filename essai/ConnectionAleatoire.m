%connection à peu près aléatoire
M=random('bino',1,1/2,6,6);
for i=1:6
    if M(i,i)==1
        M(i,i)=0;
    end
end
R=5;
NeuronePourInterconnectionToutOuRien(0.02,0.2,-65,8,50,100,0.05,500,M,R);