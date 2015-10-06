% Extract the data vectors from the hyperspectral image. 

% Load hyperspectral test image.

%load Indian_pines_corrected
load Salinas_corrected

%M_3D = indian_pines_corrected;
M_3D = salinas_corrected;

[h, w, p]=size(M_3D);

% figure;
% imshow(M_3D(:,:,150),[]);
% title('Indian Pines. Band: 150')

% Convert 3D HSI data cube to 2D matrix.

M = hyperConvert2d(M_3D);
sample_min=min(M);
sample_max=max(M);
sample_max_min=sample_max-sample_min;
M=(M-repmat(sample_min,size(M,1),1))./repmat(sample_max_min,size(M,1),1);


[N, p] = size(M);


% Load ground truth.

% load Indian_pines_gt
% Grd_truth = indian_pines_gt;
load Salinas_gt
Grd_truth = salinas_gt;

% figure;
% imshow(Grd_truth,[]);
% title('Ground Truth');


% Select the target region from the ground truth table provided.  

% Corn=4;
% Wheat=13;
% Woods=14;
% Oats=9;
% Hay-windrowed=8;....

for i=1:16
    targetno=i;

    TargetPos=zeros(h,w);
    indtarget= find(Grd_truth==targetno);
    TargetPos(indtarget)=1;

%     figure;
%     imshow(TargetPos,[]);
%     title('Target Location');

    % Extract the data vectors. 

    Ttarget=M(indtarget,:); % The data vectors for the class. Divide appropriately into two parts for training and prediction...
    
    indices = crossvalind('Kfold',size(Ttarget,1),5);
    test_data_indeces= find(indices == 3); train_data_indeces = find(indices ~= 3);
    train_data= Ttarget(train_data_indeces,:);
    test_data= Ttarget(test_data_indeces,:);

%     save(['pines_train_data_class' num2str(i) '.mat'],'train_data','-mat');
%     save(['pines_test_data_class' num2str(i) '.mat'],'test_data','-mat');
    save(['salinas_train_data_class' num2str(i) '.mat'],'train_data','-mat');
    save(['salinas_test_data_class' num2str(i) '.mat'],'test_data','-mat');
end


%{  
    grnd_truth_table={'Alfalfa';'Corn-notill';'Corn-mintill';'Corn';
    'Grass-pasture';'Grass-trees';'Grass-pasture-moved';'Hay-windrowed';
    'Oats';'Soybean-notill';'Soybean-mintil';'Soybean-clean';'Wheat';
    'Woods';'Buildings-grass-trees-drives';'Stone-steel-towers'};
%}