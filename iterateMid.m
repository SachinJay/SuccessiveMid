%takes in an x vector and a y vector along with the matrix M used to
%iterate. If we want to run the process in reverse, we simply supply the
%inver of M instead of M itself. 
function iterateMid(x,y,iter)

%So we can graph multiple things on one set of axes
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
    
    size = length(x);
    M = produceMidpointMat(size);
    
    %Apply M in order to iterate
    x = M*x; 
    y = M*y;
end
hold off
end