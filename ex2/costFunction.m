function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% h = sigmoid(theta' * X');
h = sigmoid(X * theta);
% disp('size of y transpose is')
% size(y')
% disp('size of h is')
% size(h)

% J = (-y' .* log(h) - (1 - y') .* log(1 - h));

logh = log(h);
logh1 = log(1 - h);
J = (1/m) * (logh' * -y - logh1' * (1 - y));

% disp('size of X transpose is')
% size(X')
% disp('size of h - y transpose is')
% size(h - y)
grad = (1 / m) * (X' * (h - y)); 
grad = grad';



% =============================================================

end
