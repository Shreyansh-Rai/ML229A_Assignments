function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
printf("The size of s is\n")
disp(size(X))
disp('Size of theta1')
disp(size(Theta1))
disp(size(Theta2))
% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%
X = [ones(m,1) X];
disp(X(1,:));

hidden = Theta1*X'; %25 X 5000 matrix
hidden = hidden'; %5000 X 25
disp(size(hidden))
hidden = sigmoid(hidden);
hidden = [ones(m,1) hidden]; %5000 X 26
output = hidden*Theta2';
output = sigmoid(output);
for i=1:m,
  [x,xi] = max(output(i,:));
  p(i,1) = xi;
endfor






% =========================================================================


end
