clear;

addpath('setup');
addpath('train');
addpath('collect');
addpath('resources');

table = [ 1 2 3 4; 2 3 4 5; 3 4 5 6; 4 5 6 7; 5 6 7 8; ...
		  6 7 8 9; 7 8 9 10; 8 9 10 11; 9 10 11 12; 10 11 12 13; ];

includeInX =  [0; 1; 0; 1;];
yIndex = 3;

[X, y, mu, sigma] = setup(table, yIndex, includeInX);

