function [theta] = doStep(X, y, runmode)
% executes the machine learning based on the runmode provided

% X - the feature matrix to train with
% y - the output vector to train with
% runmode - the type of run requested

% theta - the theta trained (interpretation of theta depends on the runmode
% 		  requested must be based off of the runmode provided)

% basic linear regression
if runmode == '1'
	[theta] = linearRegression(X, y);
end


end