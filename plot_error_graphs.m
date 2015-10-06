clear all
close all
load backprop_weights.mat
epoch=[1:10000];
percent_test_err=100*test_err/2000;
percent_train_err=100*train_err/8200;
figure
plot(epoch,percent_test_err,'r',epoch,percent_train_err,'b');
title('Test and Training Set Error Percentages for 30x30 Hidden Layers');
xlabel('Number of Epochs');
ylabel('Error Percentage (%)');
grid on
legend('Test Set Error','Training Set Error');

