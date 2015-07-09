function r2 = pearson(x,y)

	xhat = x .- mean(x);
	yhat = y .- mean(y);
	
	r = sum(xhat .* yhat) / sqrt(sum(xhat .^ 2) * sum(yhat .^ 2));

	r2 = r^2;
	
end