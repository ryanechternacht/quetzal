function [Xtrain, ytrain] = plan(XtrainMaster, ytrainMaster, runmode)
% based on the runmode provides, setups the data for the test script

% XtrainMaster - the master copy of the feature matrix
% ytrainMaster - the master copy of the output vector
% runmode - the type of run requested

% Xtrain - the modified feature matrix to use for this execution
% ytrain - the modified output vector to use for this execution


% this piece of the process modifies the training data; examples:
% -- resample training data (bootstrap aggregation)
% -- remove columns for the training data 
% -- add additional columns to the training data
% -- modify execution paramters for later stages

% no modifications made
if runmode == '1'
	Xtrain = XtrainMaster;
	ytrain = ytrainMaster;
end

end
