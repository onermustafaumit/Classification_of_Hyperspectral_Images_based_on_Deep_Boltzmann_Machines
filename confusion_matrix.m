clear all

estimated_test_class=[];
test_class=[];
estimated_training_class=[];
training_class=[];

load last_trial

%%%% TEST STATS 
%%%% Error rates 
   [testnumcases testnumdims testnumbatches]=size(testbatchdata);
   N=testnumcases;
   bias_hid= repmat(h1_biases,N,1);
   bias_pen = repmat(h2_biases,N,1);
   bias_top = repmat(topbiases,N,1);

   err=0;
   err_cr=0;
   counter=0;  
   for batch = 1:testnumbatches
     data = [testbatchdata(:,:,batch)];
     temp_h2 = temp_h2_test(:,:,batch); 
     target = [testbatchtargets(:,:,batch)]; 

     w1probs = 1./(1 + exp(-data*w1_vishid -temp_h2*w1_penhid - bias_hid  )); 
     w2probs = 1./(1 + exp(-w1probs*w2 - bias_pen)); 
     targetout = exp(w2probs*w_class + bias_top );
     targetout = targetout./repmat(sum(targetout,2),1,16);
     [I J]=max(targetout,[],2);
     estimated_test_class=[estimated_test_class;J];
     [I1 J1]=max(target,[],2); 
     test_class=[test_class;J1];
     counter=counter+length(find(J~=J1));  
     err_cr = err_cr- sum(sum( target(:,1:end).*log(targetout))) ;
   end
%%
   test_error=counter;
   test_crerror=err_cr;
   fprintf(1,'\nTest  misclassification err %d (out of 10800),  test cross entropy error %f \n',test_error,test_crerror);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  %%%% TRAINING STATS
  %%%% Error rates
  [numcases numdims numbatches]=size(batchdata);
  N=numcases;
  err=0;
  err_cr=0;
  counter=0;
  for batch = 1:numbatches
    data = [batchdata(:,:,batch)];
    temp_h2 = temp_h2_train(:,:,batch); 
    target = [batchtargets(:,:,batch)];

    w1probs = 1./(1 + exp(-data*w1_vishid -temp_h2*w1_penhid - bias_hid  ));
    w2probs = 1./(1 + exp(-w1probs*w2 - bias_pen));
    targetout = exp(w2probs*w_class + bias_top );
    targetout = targetout./repmat(sum(targetout,2),1,16);
    [I J]=max(targetout,[],2);
    estimated_training_class=[estimated_training_class;J];
    [I1 J1]=max(target,[],2);
    training_class=[training_class;J1];
    counter=counter+length(find(J~=J1));

    err_cr = err_cr- sum(sum( target(:,1:end).*log(targetout))) ;
  end

  train_error=counter;
  train_crerror=err_cr;
  fprintf(1,'Train misclassification err %d train (out of 43300), train cross entropy error %f \n',train_error,train_crerror);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[C_test,order_test] = confusionmat(test_class,estimated_test_class);
[C_training,order_training] = confusionmat(training_class,estimated_training_class);

x = diag(C_test);
D = diag(x);
num=sum((C_test-D),2);
denom=sum(C_test,2);
percent_test=(num./denom)*100;
num2=sum(num,1);
denom2=sum(denom,1);
average_percent_test=(num2./denom2)*100;

x = diag(C_training);
D = diag(x);
num=sum((C_training-D),2);
denom=sum(C_training,2);
percent_training=(num./denom)*100;
num2=sum(num,1);
denom2=sum(denom,1);
average_percent_training=(num2./denom2)*100;

