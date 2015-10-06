This source code is based on the code of Ruslan Salakhutdinov which is written for MNIST 
dataset and available from http://www.cs.toronto.edu/~rsalakhu/DBM.html . README2.txt is 
also explaining the details of this code. However, the code provided here is modified for
HSI (Hyper Spectral Images) and some necessary additions are done by Mustafa Ümit ÖNER in 
January 2015.

Please note that DBMs (Deep Boltzman Machines) are developed for binary networks, but we 
tried this architecture with normalized continuous data and we obtain satisfactory results.
Altough, this is mainly due to the back-propagation stage in the supervised side of the algorithm, 
it is also observed that unsupervised training property of DBMs also work.

Permission is granted for anyone to copy, use, modify, or distribute this
program and accompanying programs and documents for any purpose, provided
this copyright notice is retained and prominently displayed, along with
a note saying that the original programs are available from 
https://github.com/onermustafaumit/Classification_of_Hyperspectral_Images_based_on_Deep_Boltzmann_Machines .

/***************/
For detailed background information related to the analysis and the implementation of it, 
please visit http://www.umitoner.com/projeler.html .