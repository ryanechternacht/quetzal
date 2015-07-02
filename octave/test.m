clear;

addpath('setup');
addpath('train');
addpath('collect');
addpath('resources');

table = [ 1 2 3 4; 2 4 6 8; 3 6 9 12; 4 8 12 16; 5 10 15 20; ...
		  6 5 4 3; 7 4 1 -2; 8 3 -2 -6; 9 2 -5 -12; 10 1 -8 -17; ];

includeInX =  [0; 1; 0; 1;];
yIndex = 3;

[Xtrain, ytrain, Xcv, ycv, Xtest, ytest, mu, sigma] = ...
	setup(table, yIndex, includeInX);

