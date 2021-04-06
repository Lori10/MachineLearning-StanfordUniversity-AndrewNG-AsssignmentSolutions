% Unvectorized Solution
function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
nr_features = size(X, 2);
new = zeros(nr_features, 1);
hx = X * theta; 

for iter = 1:num_iters
    
    for j=1:nr_features
        err = (hx - y) .* X(:,j);
        new(j) = theta(j) - (alpha/m) * (sum(err));          
    end
    
    theta = new;
    hx = X * theta;
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

% Vectorized Solution
%function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)

%m = length(y); % number of training examples
%J_history = zeros(num_iters, 1);
 
%for iter = 1:num_iters
%   h = X * theta;
%   err = h - y;
%   theta_change = (alpha/m) .* (X' * err);
%   theta = theta - theta_change;
%   J_history(iter) = computeCostMulti(X, y, theta); 

%end