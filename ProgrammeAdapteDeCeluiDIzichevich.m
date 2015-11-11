Ne=1;
a=0.02*ones(Ne,1);
b=0.2*ones(Ne,1);
c=-50*ones(Ne,1);
d=2*ones(Ne,1);
v=-50*ones(Ne,1);
u=b.*v;
firings=[];
for t=1:1000
    I=5*ones(Ne,1);
    fired=find(v>=30);
    firings=[firings;t+0*fired,fired];
    v(fired)=c(fired);
    u(fired)=u(fired)+d(fired);
    v=v+0.5*(0.04*v.^2+5*v+140-u+I);
    v=v+0.5*(0.04*v.^2+5*v+140-u+I);
    u=u+a.*(b.*v-u);
end;
plot(firings(:,1),firings(:,2),'.');
plot(v);


