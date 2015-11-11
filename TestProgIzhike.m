%FiringRate Izichevich


% Created by Eugene M. Izhikevich, February 25, 2003
% Excitatory neurons    Inhibitory neurons
Ne=800;                 Ni=200;
re=rand(Ne,1);          ri=rand(Ni,1);
a=[0.02*ones(Ne,1);     0.02+0.08*ri];
b=[0.2*ones(Ne,1);      0.25-0.05*ri];
c=[-65+15*re.^2;        -65*ones(Ni,1)];
d=[8-6*re.^2;           2*ones(Ni,1)];
S=[0.5*rand(Ne+Ni,Ne),  -rand(Ne+Ni,Ni)];


% I0=[0:20:500];
% Sigmo=zeros(1,length(I0));
% for i=1:length(I0)    
% Sigmo(i)=FiringRate(Ne,Ni,a,b,c,d,S,I0(i));
% end
% 
% plot(I0,Sigmo);

FR=FiringRate(Ne,Ni,a,b,c,d,S,5);