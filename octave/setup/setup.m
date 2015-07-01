function [X, y, sigma, mu] = setup(table, yIndex, includeInX)
% takes the information supplied by the user and setups the data necessary to 
% perform the machine learning

% table - the data table provided by the user
% yIndex -  identifies which column from the data table should be used as y
% includeInX - an n-dimensional vector with 1's for columns from the data table that 
% 			   should be included in X, and 0's for those that should be excluded

% X - the scaled training feature matrix
% y - the known output vector
% mu - avg of each of the feature vectors used for normalization
% sigma - std dev of each of the feature vectors used for normalization

[Xoriginal, y] = makeXy(table, yIndex, includeInX);

[X, mu, sigma] = scaleFeatures(Xoriginal);

end