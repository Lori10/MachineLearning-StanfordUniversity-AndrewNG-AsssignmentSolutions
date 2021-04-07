function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

% Unfold the U and W matrices from params
X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);
            
% You need to return the following values correctly
J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

% Vectoried implementation
hx = X * Theta';
mat1 = hx - Y; 
mat2 = mat1 .* R; 
mat3 = mat2 .^ 2;
cost = sum(mat3(:)) / 2;
Theta2 = Theta .^ 2;
X2 = X .^ 2;
J = cost + (lambda/2) * sum(Theta2(:)) + (lambda/2) * sum(X2(:));

% Unvectorized implementation
%cost = 0;
%for j=1:num_users
%    for i=1:num_movies
%       if(R(i,j) == 1)
%           sum_term = (Theta(j,:) * X(i,:)' - Y(i,j)) .^ 2;
%           cost = cost + sum_term;
%    end
%end

%J = cost/2;






% Unvectorized implementation
%for i=1:num_movies
%    for j=1:num_features
%        s = 0.0;
%        for k=1:num_users
%           if(R(i,k) == 1)
%               sum_term = (Theta(k,:) * X(i,:)' - Y(i,k)) * Theta(k,j);  
%               s = s + sum_term;
%           end
%        end
%        
%        X_grad(i,j) = s + lambda*X(i,j);
%    end
%end


%for j=1:num_users
%    for i=1:num_features
%        s = 0.0;
%       for k=1:num_movies 
%            if(R(k,j) == 1)
%                sum_term = (Theta(j,:) * X(k,:)' - Y(k,j)) * X(k,i);  
%                s = s + sum_term;
%            end
%           
%       end
%        
%        Theta_grad(j,i) = s + lambda*Theta(j,i);
%    end
%end



% Vectorized implementation

% Gradient of X
for i=1:num_movies
        hx = Theta * X(i,:)';
        new_hx = hx';
        term = (new_hx - Y(i,:)) .* R(i,:);
        new_term = Theta' * term'; 
        X_grad(i,:) = new_term' + (lambda .* X(i,:));
end

% Gradient of Theta
for i=1:num_users
        hx = X * Theta(i,:)';
        term = (hx - Y(:,i)) .* R(:,i);
        new_term = X' * term; 
        Theta_grad(i,:) = new_term' + (lambda * Theta(i,:));
end

grad = [X_grad(:); Theta_grad(:)];


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost function and gradient for collaborative
%               filtering. Concretely, you should first implement the cost
%               function (without regularization) and make sure it is
%               matches our costs. After that, you should implement the 
%               gradient and use the checkCostFunction routine to check
%               that the gradient is correct. Finally, you should implement
%               regularization.
%
% Notes: X - num_movies  x num_features matrix of movie features
%        Theta - num_users  x num_features matrix of user features
%        Y - num_movies x num_users matrix of user ratings of movies
%        R - num_movies x num_users matrix, where R(i, j) = 1 if the 
%            i-th movie was rated by the j-th user
%
% You should set the following variables correctly:
%
%        X_grad - num_movies x num_features matrix, containing the 
%                 partial derivatives w.r.t. to each element of X
%        Theta_grad - num_users x num_features matrix, containing the 
%                     partial derivatives w.r.t. to each element of Theta
%

end
