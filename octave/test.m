clear;

addpath('setup');
addpath('train');
% addpath('train/plan')
% addpath('train/do')
% addpath('train/check')
% addpath('train/act')
addpath('collate');
addpath('resources');


% setup data
runmode = '1';

table = load('data.csv');

includeInX =  [1; 0; 0; 1;];
yIndex = 3;


% script run
[Xtrain, ytrain, Xcv, ycv, Xtest, ytest, mu, sigma] = ... 
	setup(table, yIndex, includeInX, runmode);

[theta] = train(Xtrain, ytrain, Xcv, ycv, runmode);


% collate results
[r2] = collate(Xtest, ytest, theta, runmode);

r2




