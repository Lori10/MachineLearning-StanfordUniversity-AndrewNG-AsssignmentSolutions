function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    hx = X * theta;
    err = hx - y;
    % el = err .* X(:,1), since we multiply by 1 it it not neccessary
    tmp1 = theta(1) - alpha * (1/m) * (sum(err)); 
    
    el = err .* X(:, 2);
    tmp2 = theta(2) - alpha * (1/m) * sum(el);
    
    theta(1) = tmp1;
    theta(2) = tmp2;
    
    
    J_history(iter) = computeCost(X, y, theta);

end

end
