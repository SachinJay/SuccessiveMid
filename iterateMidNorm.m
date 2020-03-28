%Same thing as iterateMid(), takes in an x and y vector and then the Matrix
%M that reprsents the iteration
function iterateMidNorm(x,y,iter)

hold on
for i = 1:iter
    %Add the first elements to the end just so that Matlab plots the cycle
    x(length(x)+1) = x(1);
    y(length(y)+1) = y(1);
    
    %Draw graph
    plot(x,y);
    
    %Remove the first element from the end before calculating the next x,y
    x(length(x)) = [];
    y(length(y)) = [];
    
     
    %Find
    M = produceMidpointMat(length(x));
    
    %apply M to x and then normalize
    x = M*x;
    x = x/norm(x);
    
    %apply M to y and then normalize
    y = M*y;
    y = y / norm(y);
end
hold off
end