function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    i = 1:m;
    q1= theta(1) - (alpha/m) * sum(((X * theta) - y) * 1);
    q2 = theta(2) - (alpha/m) * sum(((X * theta) - y) .* X(i,2));
    theta(1) = q1;
    theta(2) = q2;
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
