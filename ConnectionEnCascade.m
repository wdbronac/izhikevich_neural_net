%connection en cascade
M=[ 0 1 0 0 0 ; 0 0 1 0 0 ; 0 0 0 1 0 ; 0 0 0 0 1; 0 0 0 0 0];
R=5;
NeuronePourInterconnection(0.02,0.2,-65,8,18,100,0.05,500,M,R);