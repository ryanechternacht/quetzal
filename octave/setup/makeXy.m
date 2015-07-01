function [X, y] = makeXy(table, yIndex, includeInX)
% makeXy - builds the X and y matrices for training from the data table and column 
% 		   settings provided by the user

% table - the data table provided by the user
% yIndex -  identifies which column from the data table should be used as y
% includeInX - an n-dimensional vector with 1's for columns from the data table that 
% 			   should be included in X, and 0's for those that should be excluded

% X - the training feature matrix
% y - the known output vector

	X = [];
	for i=1:size(table,2)
		if includeInX(i) == 1
			X = [X table(:, i)];
		end
	end

	y = table(:, yIndex);
end