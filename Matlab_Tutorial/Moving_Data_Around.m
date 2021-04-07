A = [1,2 ; 3,4 ; 5,6];
s = size(A);

size(s);
size(A, 1); % first dimension
size(A, 2); % second dimension

v = [1 2 3 4];
length(v);
length(A); % biggest dimension
pwd; % current directory
% cd 'C:/Desktop';
ls; % files in current directory
% load featureX.dat or load('featureX.dat') -> load file
% load('priceY.dat')
% featureX -> display file
% size(featureX) -> show size of matrix (featureX has 2 columns: 1-size
% of house, 2-nr of bedrooms
who; % variables in the workspace
whos; % informations about variables in the workspace
% clear featureX -> delete featureX variable
% priceY(1:10) -> get first 10 elements from priceY vector
% save hello.mat a; % save variable a in the file hello.mat in binary frmt

clear % delete all variables in workspace
load('hello.mat');
a; % load a variable from hello.mat
save hello.txt a -ascii; % save variable a in hello.txt in text format

A = [1,2 ; 3,4; 5,6]
A(3,2); % get matrix element
A(2,:); % : means every element
A(:, 2);
A([1,3], :) % first and third row
A(:, 2) = [11; 12; 13];
A(:, size(A,2)+1) = [101; 102; 103]; % insert new column to the right
A(:); % put all elements of matrix into single vector

A = [1,2 ; 3,4 ; 5,6];
B = [10,11 ; 12,13 ; 14,15];
C = [A , B]; % append matrices horizontal
C = [A ; B] % append matrices vertical