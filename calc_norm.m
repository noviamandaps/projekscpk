function [matrixNew] = calc_norm(matrix)

[m,n] = size(matrix);
V(m) = 0;
for i = 1:m
    for j = 1:n
        V(j) = V(j) + matrix(i,j);
    end
end

matrixNew(m,n) = 0;
for i = 1:m
    for j = 1:n
        matrixNew(i,j) = matrix(i,j) / V(j);
    end
end

% sum = sum(matrix)
% matrixNew = matrix./sum;