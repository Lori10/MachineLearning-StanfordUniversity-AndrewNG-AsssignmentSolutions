function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
m = size(X,1);
idx = zeros(m, 1);

for i=1:m
    x_i = X(i,:);
    min_k = 0;
    min_d = 100000;
    for j=1:K
        c_j = centroids(j,:);
        dif = x_i - c_j;
        dif_norm2 = sum(dif.^2);
        if dif_norm2 < min_d
            min_d = dif_norm2;
            min_k = j;
        end
    end
    
    idx(i) = min_k;
end



% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.

end

