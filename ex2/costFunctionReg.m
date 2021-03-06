function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));

[cost, gradient] = costFunction(theta, X, y);
new_theta = theta(2:length(theta),:);
reg_term = lambda / (2*m) * sum(new_theta .^ 2);
J = cost + reg_term;

thetaT_x = X * theta;
hx = 1 ./ (1 + exp(thetaT_x .* (-1)));
s = X' * (hx - y);
grad = (s/m) + ((lambda/m) .* theta) ;
grad(1) = gradient(1);

% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

end
