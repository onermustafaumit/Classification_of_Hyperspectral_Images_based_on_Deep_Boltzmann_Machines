function  [err] = ...
 testerr(testbatchdata,testbatchtargets,vishid_l0,hidbiases_l0,...
        vishid,visbiases,hidbiases,labhid,labbiases);

[numdim numhid]=size(vishid_l0);
[numcases numdims numbatches]=size(testbatchdata);
counter=zeros(16,size(testbatchdata,3)*10);

targets_all = zeros(size(testbatchdata,3)*10,16);
for batch=1:size(testbatchdata,3)
 targets_all( (batch-1)*100+1:batch*100,:) = testbatchtargets(:,:,batch);
end

  bias_hid_l0= repmat(2*hidbiases_l0,numcases,1);
  bias_pen = repmat(hidbiases,numcases,1);

for batch= 1:numbatches
     inter = zeros(numcases,16);
     data = testbatchdata(:,:,batch); 

     totin_h1 = data*(2*vishid_l0) + bias_hid_l0;
     temp_h1 = 1./(1 + exp(-totin_h1));

 
  for tt=1:16
    targets = zeros(numcases,16);
    targets(:,tt)=1; 
    lab_bias =  targets*labhid; 
   
    temp1 = temp_h1*visbiases' + targets*labbiases';   
    prod_3 = ones(numcases,1)*hidbiases + (temp_h1*vishid + targets*labhid);
    p_vl  = temp1 + sum(log(1+exp(prod_3)),2);
    inter(:,tt) = p_vl;  
 end 

    counter(:,(batch-1)*100+1:batch*100)=inter';
 end 
  [I J]=max(counter',[],2);
   [I1 J1]=max(targets_all,[],2);
   err1=length(find(J~=J1));
  % fprintf(1,'err %d\n',err1);
 err = err1;

