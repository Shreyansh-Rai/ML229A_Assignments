function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
disp('cost before starting')
disp(computeCost(X, y, theta))
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    del = zeros(size(theta));
    for i = 1:m,
      %disp(size(X(i,:)))
      %disp(size(theta))
      del = del + ( (X(i,:)*theta - y(i))*(X(i,:)'));
    endfor

    del = alpha*del/(m);
    theta = theta - del;
    %disp(theta)
    disp(computeCost(X,y,theta))
    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

end
