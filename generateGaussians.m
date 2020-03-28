%Makes num gaussian vectors of dimension d
function result =  generateGaussians(num,d)
    %matrix to store gaussian vectors in 
    M = zeros(num,d);
        for i = 1:num
            %fills each row of the matrix with a gaussian vector
            M(i,:) = normrnd(0,1,1,d);
        end

    result = M;
end