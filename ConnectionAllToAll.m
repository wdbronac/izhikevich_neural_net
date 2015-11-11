%connection en all to all
M=ones(6,6)-eye(6);
R=5;
NeuronePourInterconnection(0.02,0.2,-65,8,80,100,0.05,500,M,R);