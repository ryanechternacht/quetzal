function [theta] = ... 
	train(XtrainMaster, ytrainMaster, XcvMaster, ycvMaseter, runmode)
% performs all steps to train the desirec model on the provided data

% XtrainMaster - the master copy of the feature matrix
% ytrainMaster - the master copy of the output vector
% XcvMaster - the master copy of the cross validation feature matrix
% ycvMaster - the master copy of the cross validation output
% runmode - the type of run requested

% Xtrain - the modified feature matrix to use for this execution
% ytrain - the modified output vector to use for this execution

% theta - the trained weighting matrix

addpath('train/plan')
addpath('train/do')
addpath('train/check')
addpath('train/act')

[Xtrain, ytrain] = plan(XtrainMaster, ytrainMaster, runmode);

[theta] = doStep(Xtrain, ytrain, runmode);

end
