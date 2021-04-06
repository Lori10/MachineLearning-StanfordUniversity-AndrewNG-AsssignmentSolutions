function plotData(X, y, theta) % Solution 1 arguments must be data

%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% Solution 1
%data_1 = data(data(:,3) == 1, [1,2]);
%data_0 = data(data(:,3) == 0, [1,2]);

%plot(data_1(:,1), data_1(:,2), 'k+','LineWidth', 2, 'MarkerSize', 7);
%plot(data_0(:,1), data_0(:,2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);

% Solution 2
% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);

plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);

hold off;

end
