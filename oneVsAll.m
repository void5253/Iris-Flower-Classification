function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all

% Some useful variables
m = size(X, 1);
n = size(X, 2);

all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

initial_theta = zeros(n+1,1);
options = optimset('GradObj', 'on', 'MaxIter', '100');

for c=1:num_labels
  all_theta(c,:) = fminunc(@(t)(lrCostFunction(t,X,(y==c),lambda)),initial_theta,options);
endfor

% =========================================================================

end
