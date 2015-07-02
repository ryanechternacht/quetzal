function [output] = ... 
	plan(XtrainMaster, ytrainMaster, XcvMaster, ycvMaseter, runmode)

addpath('train/plan')
addpath('train/do')
addpath('train/check')
addpath('train/act')

[Xtrain, ytrain] = plan(XtrainMaster, ytrainMaster, runmode);

[theta] = doStep(Xtrain, ytrain, runmode);

output = theta;

end
