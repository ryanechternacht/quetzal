function [theta, ytrain] = linearRegression(X, y)


% TODO refactor this some

% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);

lambda = 0;

% Set Options
options = optimset('GradObj', 'on', 'MaxIter', 100);

% Optimize
[theta, J, exit_flag] = ...
	fminunc(@(t)(costFunc(t, X, y, lambda)), initial_theta, options);


end


