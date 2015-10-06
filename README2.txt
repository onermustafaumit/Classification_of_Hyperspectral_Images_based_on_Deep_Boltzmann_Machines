
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

How to make it work:

   1. Create a separate directory and download all these files into the same directory
   2. Download from http://yann.lecun.com/exdb/mnist the following 4 files:
          * train-images-idx3-ubyte.gz train-labels-idx1-ubyte.gz
          * t10k-images-idx3-ubyte.gz t10k-labels-idx1-ubyte.gz
   3. Unzip these 4 files by executing:
          * gunzip train-images-idx3-ubyte.gz
          * gunzip train-labels-idx1-ubyte.gz
          * gunzip t10k-images-idx3-ubyte.gz
          * gunzip t10k-labels-idx1-ubyte.gz
      If unzipping with WinZip, make sure the file names have not been
      changed by WinZip.
   4. Download the following 16 files:
          * demo_small.m Main file for training and fine-tuning a toy DBM model.
          * demo.m Main file for training and fine-tuning a DBM model (reproduces results of the DBM paper).
          * converter.m Converts raw MNIST digits into matlab format
          * rbm.m Training RBM with binary hidden and visible units
          * rbm_l2.m Training 2nd layer RBM with binary hidden and visible units
          * dbm_mf Joint training of all layers in a DBM 
		  * mf.m Implements mean-field inference
          * backprop.m Backpropagation for fine-tuning a DBM 
          * mf_class.m Helper function used by backprop.m
          * CG_MNIST.m Conjugate Gradient optimization for fine-tuning a DBM
          * CG_MNIST_INIT.m Conjugate Gradient optimization for fine-tuning a DBM (training top-level 
            parameters, while holding low-level parameters fixed). 
		  * makebatches.m Creates minibatches for DBM training
          * testerr.m Computes misclassification error on the MNIST dataset. 
          * dispims.m Displays progress during DBM training. 
          * minimize.m Conjugate gradient code. 
          * README.txt
    5. For the toy experiment, run demo_small in Matlab (to check that everything works fine).
    6. Run demo in Matlab. This is a long version of training and fine-tuning a Deep Boltzmann Machine, which 
       can take over 2 days. The code also uses sparsity to improve model performance.  
    7. Make sure you have enough space to store the entire MNIST dataset on your disk.
       You can also set various parameters in the code, such as maximum number of epochs,
       learning rates, number of mean-field updates, network architecture, etc.

I did not try to optimize this code, but please e-mail me if you find bugs.  
   

