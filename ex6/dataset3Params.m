function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%


C_vector = [0.01 0.03 0.1 0.3 1 3 10 30]
Sigma_vector = [0.01 0.03 0.1 0.3 1 3 10 30]
Error_matrix = zeros(length(C_vector), length(C_vector));
%results = zeros(length(C_vector) * length(Sigma_vector), 3) 

%row = 1
for i=1:length(C_vector)
    for j=1:length(C_vector)
        C_i = C_vector(i);
        sigma_i = Sigma_vector(j);
        model= svmTrain(X, y, C_i, @(x1, x2) gaussianKernel(x1, x2, sigma_i));
        predictions = svmPredict(model, Xval);
        error = mean(double(predictions ~= yval));
        Error_matrix(i,j) = error;
        %results(row,:) = [C_i sigma_i error];
        %row = row + 1;
    end
end

minMatrix = min(Error_matrix(:));
[r,c] = find(Error_matrix==minMatrix);
C = C_vector(r);
sigma = Sigma_vector(c);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
