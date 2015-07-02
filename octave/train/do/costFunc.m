% cost func
function [J, grad] = costFunc(theta, X, y, lambda)
	m = size(X,2);
	grad = zeros(size(theta));

	predictions = X * theta;
	squaredError = (predictions - y).^2;
	J = 1 / (2*m) * sum(squaredError);

	grad(1) = (1/m) * X'(1,:) * (X * theta - y);
	grad(2:end) = (1/m) * X'(2:end,:) * (X * theta - y) ... % base
			  + (lambda/m) * theta(2:end);
end