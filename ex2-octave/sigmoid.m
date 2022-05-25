function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


%So let input z be any dimension 1x1 to mxn
dimz = size(z);
for i = 1:dimz(1,1),
  for j = 1:dimz(1,2),
    output_precision(9);
    g(i,j) = (1/(1+(exp(1)^(-z(i,j)))));
  endfor
endfor



% =============================================================

end
