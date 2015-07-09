function [r2] = collate(Xtest, ytest, theta, runmode)
% collates the results of the training for display and consumption by a human

% Xtest - test feature matrix for evaluating the final performance of the training
% ytest - test output vector for evaulating the final performance of the training
% theta - the weights trained by the training
% runmode - the type of run requested

% output - ??? (what are we outputting?)
% r2 - the pearson's squared rating of our linear estimation

if runmode == '1' 
	predictions = Xtest*theta;
	% stats = statistics(Xtest*theta);

	r2 = pearson(ytest, predictions);
end


end