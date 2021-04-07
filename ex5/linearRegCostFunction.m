function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

hx = X * theta;
cost = sum((hx - y) .^2) / (2*m);
new_theta = theta(2:length(theta),:);
reg_term = lambda / (2*m) * sum(new_theta .^ 2);
J = cost + reg_term;

grad = zeros(size(theta));
var = X' * (hx-y);
grad = var/m + (lambda/m) * theta;
grad(1) = sum(hx-y) / m;

    
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
