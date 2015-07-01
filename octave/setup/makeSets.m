function [Xtrain, ytrain, Xcv, ycv, Xtest, ytest] = makeSets(X, y)

m = size(X,1);

randomOrdering = randperm(m);

itrain = int8(m*.6);
icv = itrain + int8(m*.2);

for i=1:itrain
	1
end

for i=itrain+1:icv
2
end

for i=icv+1:m
3
end


end
