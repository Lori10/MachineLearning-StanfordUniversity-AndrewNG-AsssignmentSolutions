function J = costFunction(X, y, theta)
hx = X * theta; % predictions
m = size(X, 1); % nr of training examples
sqrErrors = (hx - y) .^ 2; % squared errors
%J = (1/2*m) * sum(sqrErrors);
J = 1/(2*m) * (sum(sqrErrors));
end