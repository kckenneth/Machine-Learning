function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

    %select the first column of the X
    X1 = X(:,1);
    %select the second column of the X
    X2 = X(:,2);
    %output of hypothesis
    hypothesis = X * theta;
    %using the gradient method to update theta
    theta(1) = theta(1) - alpha * (1/m) * sum((hypothesis - y)' *  X1);
    theta(2) = theta(2) - alpha * (1/m) * sum((hypothesis - y)' *  X2);

%For theta(1), you don’t need to use transpose and X1 because X1 value is all 1.
%But for clarity and consistency, just use transpose and X1. 





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
