A = [1,2 ; 3,4; 5,6];
B = [11,12 ; 13,14; 15,16];
C = [1,1 ; 2,2];
A * C % matrix multiplication
A .* B; % element by element multiplication
A .^ 2 % elemeny by element square 

v = [1; 2; 3]
1 ./ v % element by element division
log(v);
exp(v);
abs(v);
abs([-1; 2; -3]);
-v;
v + ones(length(v), 1);
v + 1;

A' % transpose of matrix A
x = [1 15 2 0.7];
val = max(x);
[val, ind] = max(x); % maximum und index of maximum
max(A); % maximum of each column
x < 3; % logical vector
find(x < 3); % elements that are < 3
M = magic(3); % 3x3 matrix, each row each column each diagonal have the same sum
[r,c] = find(A > 3) % show row and column of elements of A > 3
sum(x);
prod(x); % products of elements of a
floor(x); % rounds down the values
ceil(x); % rounds up
rand(3);
max(rand(3), rand(3)); % elemeny by element maximum
max(A, [], 1); % maximum of each column
max(A, [], 2); % maximum of each row
max(max(A)); % maximum of matrix A
max(A(:)); % maximum of matrix A (converted to vector)

P = magic(9);
sum(P, 1); % sum of each column
sum(P, 2); % sum of each row
P .* eye(9);
sum(sum(P .* eye(9))); % sum of all elements
sum(sum(P .* flipud(eye(9)))); % sum of diagonal elements

Y = magic(3);
temp = pinv(Y); % inverse of matrix
temp * Y % identical matrix