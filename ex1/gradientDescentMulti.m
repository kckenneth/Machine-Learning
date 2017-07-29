function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %



%output of hypothesis


X1 = X(:,1);
X2 = X(:,2);
X3 = X(:,3);

hypothesis = X * theta;

theta(1) = theta(1) - alpha * (1/m) * sum((hypothesis - y)’ * X1);
theta(2) = theta(2) - alpha * (1/m) * sum((hypothesis - y)’ * X2);
theta(3) = theta(3) - alpha * (1/m) * sum((hypothesis - y)’ * X3);


%This doesn’t work. Why?
%But the following works, why?

    
    %output of hypothesis
    hypothesis = X * theta;
    for theta_index = 1: size(X,2);
        %using the gradient method to update theta
        theta(theta_index) = theta(theta_index) - alpha * sum((hypothesis - y)' *  X(:,theta_index)) / m;
    end

%If you want to run the program, delete the first part from X1 assignment until %




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
