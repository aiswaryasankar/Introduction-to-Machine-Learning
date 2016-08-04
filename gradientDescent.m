function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters,


    % Perform a single gradient step on the parameter vector
    %               theta. 
    %


    h = X * theta;

    errors = h - y;

    mult = alpha / m;
    temp = X' * errors;

    gradientv = (alpha / m) * temp;

    theta = theta - gradientv;

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
