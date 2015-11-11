
function FR=FiringRate(Ne,Ni,a,b,c,d,S,I0)
firings=Spikes2emeMoitie(Ne,Ni,a,b,c,d,S,I0);
FR=length(firings)/length(firings(:,2))/(1000-firings(1,1));
end