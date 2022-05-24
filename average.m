function [average] = average(matrix)

[m,n] = size(matrix);
for i= 1:m
    sumRow = 0;
    for j= 1:n
        sumRow = sumRow + matrix(i,j);
    end
    V(i) = (sumRow);
end

average = transpose(V)/m;