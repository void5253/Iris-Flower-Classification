function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));
h = sigmoid(X*theta);
n=size(X,2);

J = -1/m*(y'*log(h)+(1-y')*(log(1-h)))+lambda/(2*m)*(theta(2:n)'*theta(2:n));

grad(1) = 1/m*(X(:,1)'*(h-y));
grad(2:n) = 1/m*(X(:,2:n)'*(h-y))+lambda/m*theta(2:n);
% =============================================================

grad = grad(:);

end
