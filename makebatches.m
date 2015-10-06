% Version 1.000
%
% Code provided by Ruslan Salakhutdinov 
%
% Permission is granted for anyone to copy, use, modify, or distribute this
% program and accompanying programs and documents for any purpose, provided
% this copyright notice is retained and prominently displayed, along with
% a note saying that the original programs are available from our
% web page.
% The programs and documents are distributed without any warranty, express or
% implied.  As the programs were written for research purposes only, they have
% not been tested to the degree that would be advisable in any important
% application.  All use of these programs is entirely at the user's own risk.

digitdata=[]; 
targets=[]; 
% load salinas_train_data_class1; digitdata = [digitdata; train_data]; targets = [targets; repmat([1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];  
% load salinas_train_data_class2; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class3; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)]; 
% load salinas_train_data_class4; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class5; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)]; 
% load salinas_train_data_class6; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class7; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class8; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class9; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class10; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class11; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class12; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class13; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0], size(train_data,1), 1)];
% load salinas_train_data_class14; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0], size(train_data,1), 1)];
% load salinas_train_data_class15; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0], size(train_data,1), 1)];
% load salinas_train_data_class16; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1], size(train_data,1), 1)];

load pines_train_data_class1; digitdata = [digitdata; train_data]; targets = [targets; repmat([1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];  
load pines_train_data_class2; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class3; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)]; 
load pines_train_data_class4; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class5; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)]; 
load pines_train_data_class6; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class7; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class8; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class9; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class10; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class11; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class12; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0], size(train_data,1), 1)];
load pines_train_data_class13; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0], size(train_data,1), 1)];
load pines_train_data_class14; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0], size(train_data,1), 1)];
load pines_train_data_class15; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0], size(train_data,1), 1)];
load pines_train_data_class16; digitdata = [digitdata; train_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1], size(train_data,1), 1)];



totnum=size(digitdata,1);
fprintf(1, 'Size of the training dataset= %5d \n', totnum);

rng(0,'v5uniform'); % rand('state',0) so we know the permutation of the training data
randomorder=randperm(totnum);

numbatches=floor(totnum/100);
numdims  =  size(digitdata,2);
batchsize = 100;
batchdata = zeros(batchsize, numdims, numbatches);
batchtargets = zeros(batchsize, 16, numbatches);

for b=1:numbatches
  batchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);
  batchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);
end;
clear digitdata targets;

digitdata=[];
targets=[];

% load salinas_test_data_class1; digitdata = [digitdata; test_data]; targets = [targets; repmat([1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];  
% load salinas_test_data_class2; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class3; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)]; 
% load salinas_test_data_class4; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class5; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)]; 
% load salinas_test_data_class6; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class7; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class8; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class9; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class10; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class11; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class12; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class13; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0], size(test_data,1), 1)];
% load salinas_test_data_class14; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0], size(test_data,1), 1)];
% load salinas_test_data_class15; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0], size(test_data,1), 1)];
% load salinas_test_data_class16; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1], size(test_data,1), 1)];

load pines_test_data_class1; digitdata = [digitdata; test_data]; targets = [targets; repmat([1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];  
load pines_test_data_class2; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class3; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)]; 
load pines_test_data_class4; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class5; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)]; 
load pines_test_data_class6; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class7; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class8; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class9; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class10; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class11; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class12; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0], size(test_data,1), 1)];
load pines_test_data_class13; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0], size(test_data,1), 1)];
load pines_test_data_class14; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0], size(test_data,1), 1)];
load pines_test_data_class15; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0], size(test_data,1), 1)];
load pines_test_data_class16; digitdata = [digitdata; test_data]; targets = [targets; repmat([0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1], size(test_data,1), 1)];

totnum=size(digitdata,1);
fprintf(1, 'Size of the test dataset= %5d \n', totnum);

rng(0,'v5uniform'); % rand('state',0); %so we know the permutation of the training data
randomorder=randperm(totnum);

numbatches=floor(totnum/100);
numdims  =  size(digitdata,2);
batchsize = 100;
testbatchdata = zeros(batchsize, numdims, numbatches);
testbatchtargets = zeros(batchsize, 16, numbatches);

for b=1:numbatches
  testbatchdata(:,:,b) = digitdata(randomorder(1+(b-1)*batchsize:b*batchsize), :);
  testbatchtargets(:,:,b) = targets(randomorder(1+(b-1)*batchsize:b*batchsize), :);
end;
clear digitdata targets;


%%% Reset random seeds 
rng(sum(100*clock),'v5uniform'); % rand('state',sum(100*clock)); 
rng(sum(100*clock),'v5normal');  % randn('state',sum(100*clock)); 



