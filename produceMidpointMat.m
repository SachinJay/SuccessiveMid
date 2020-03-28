%Produces a matrix that represents taking the midpoints of size many points
function mat = produceMidpointMat(size)

mat = zeros(size,size);

for i = 1: size
    %Last row, the first and last element are 0.5
    if(i == size)
        mat(i,1) = 0.5;
        mat(i,size) = 0.5;
    else
        mat(i,i) = 0.5;
        mat(i,i+1) = 0.5;
    end
end

end
