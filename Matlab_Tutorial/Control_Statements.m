v = zeros(10,1);
% FOR LOOP
for i=1:10
    v(i) = 2^i;
end
% for loop same as below
indices = 1:10;
for i=indices
    disp(v(i));
end
% v

% WHILE LOOP
i = 1;
while i <= 5
    v(i) = 100;
    i = i + 1;
end

% BREAK
i = 1;
while true
    v(i) = 999;
    i = i + 1;
    if i == 6
        break
    end
end
% v

% IF-ELSE
v(1) = 2;
if v(1) == 1
    disp('Value is 1');
elseif v(1) == 2
    disp('Value is 2')
else
    disp('Value is 1 or 2')
end

% If we have the squareNumber.m file in Desktop we must go with cd command
% to Desktop and then call the function
% if we add path -> addpath('C:\Users\Desktop'); cd 'C:\'
% even if we are not in the Desktop directory the function square will
% execute

% edit squareNumber.m
squareNumber(5);

% edit squareCube.m
[a,b] = squareCube(5);
a, b;

X = [1,1; 1,2; 1,3];
y = [1; 2; 3];
theta = [0;1];
J1 = costFunction(X, y, theta);
J1
% J1=0 - perfect case

the = [0;0];
J2 = costFunction(X, y, the);
J2