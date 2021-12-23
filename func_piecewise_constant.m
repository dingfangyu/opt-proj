function x = t(n, kappa)

% generating piecewise constant signal

% x0 = [2*randn(k,1); zeros(n-k,1)];
% x = sign(x0) .* max(abs(x0), 1);
% 
% p = randperm(n);
% x = x(p(p));

x = zeros(n, 1);

w = floor((n-16)/kappa);

for i=1:kappa
    j = 8 + (i-1)*w + randperm(w,1);
    
    xj = randn(1);
    x(j) = sign(xj) .* max(abs(xj), 1/2);
end

x = cumsum(x);
x = x - mean(x);