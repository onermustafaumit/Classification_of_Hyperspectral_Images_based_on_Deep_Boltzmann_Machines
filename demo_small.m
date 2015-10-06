rng(100,'v5normal');
rng(100,'v5uniform');
warning off

clear all
close all

fprintf(1,'Converting Raw files into Matlab format \n');
ExtractDataVectors_modified; 

fprintf(1,'Pretraining a Deep Boltzmann Machine. \n');
makebatches; 
[numcases numdims numbatches]=size(batchdata);

%%%%%% Training 1st layer %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
numhid=16; maxepoch=10;
fprintf(1,'Pretraining Layer 1 with RBM: %d-%d \n',numdims,numhid);
restart=1;
rbm

%%%%%% Training 2nd layer %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all 
numpen = 16; 
maxepoch=10;
fprintf(1,'\nPretraining Layer 2 with RBM: %d-%d \n',numhid,numpen);
restart=1;
makebatches; 
rbm_l2


%%%%%% Training two-layer Boltzmann machine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
close all 
numhid = 16; 
numpen = 16;
maxepoch=10;
  
fprintf(1,'Learning a Deep Bolztmann Machine. \n');
restart=1;
makebatches; 
dbm_mf

%%%%%% Fine-tuning two-layer Boltzmann machine  for classification %%%%%%%%%%%%%%%%%
maxepoch=10;
makebatches; 
backprop


