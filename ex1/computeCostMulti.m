function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

m = length(y); 
hx = X * theta;
err = (hx - y) .^ 2;
J = 1/(2*m) * (sum(err));

end
