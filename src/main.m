%{
---------------------------------------------------------------------------
Diabetic Retinopathy Image Classification
Author: Trevor Zimmerman

This script retrains inceptionv3 11 different times.
The data given is divided into 5 class (Class 0 - Class 4)

The first time the CNN is retrained, all classes are used.
A probability matrix is created.

The next 10 times the CNN is retrained, only a combination of 2 classes are
used as train/test data.
The new probabilities are added to the 1st probability matrix.

After retraining 11 times, each sample is classified by the highest 
probability score.

Then a pdf report is generated from this information:
Final_Report.pdf
---------------------------------------------------------------------------
%}

close all;
clear;
clc;

source = fileparts(mfilename('fullpath'));
cd(source);
addpath(genpath(source));

response = question();

if response == 1
    [probability_matrix, accuracy_matrix] = buildMatrix();
else
    load('workspace/default_WS.mat')
end

[known, predicted] = predictions(probability_matrix);

[final] = buildReport(probability_matrix, accuracy_matrix, ...
    known, predicted, response);

disp(final)
disp(' ')
