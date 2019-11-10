q = zeros(3)
for i = 1:3
    for j = 1:3
        q(i,j) = c(i,j)/SQRT(c(i,i)*c(j,j));
    end
end