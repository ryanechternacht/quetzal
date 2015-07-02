function [Xtrain, ytrain, Xcv, ycv, Xtest, ytest] = makeSets(X, y)

m = size(X,1);

randomOrdering = randperm(m);

itrain = int8(m*.6);
icv = itrain + int8(m*.2);

Xtrain = [];
ytrain = [];
Xcv = [];
ycv = [];
Xtest = [];
ytest = [];

for i=1:itrain
	Xtrain = [Xtrain; X(randomOrdering(i),:)];
	ytrain = [ytrain; y(randomOrdering(i))];
end

for i=itrain+1:icv
	Xcv = [Xcv; X(randomOrdering(i),:)];
	ycv = [ycv; y(randomOrdering(i))];
end

for i=icv+1:m
	Xtest = [Xtest; X(randomOrdering(i),:)];
	ytest = [ytest; y(randomOrdering(i))];
end


end
