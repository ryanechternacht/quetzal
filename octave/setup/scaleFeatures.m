function [Xnorm, mu, sigma] = scaleFeatures(X)
% scaleFeatures - scales each feature to a more balanced range so our machine 
%				  learning techniques are more effective; every feature vector is 
% 				  scaled in relation to itself using the formula:
%						(example - column avg) / column std dev

% X - the training feature matrix

% Xnorm - the normalized version of X (for actual training)
% mu - n-dimensional vector of the avg of each of the feature vectors
% sigma - n-dimensional vector of the std dev of each of the feature vectors

Xnorm = zeros(size(X));
mu = zeros(size(X,2), 1);
sigma = zeros(size(X,2), 1);

for i=1:size(X,2)
	avg = mean(X(:, i));
	dev = std(X(:,i));

	Xnorm(:,i) = (X(:,i) - avg) / dev;

	mu(i) = avg;
	sigma(i) = dev;
end
