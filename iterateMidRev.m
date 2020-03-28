function iterateMidRev(x,y, A)
hold on

for i = 1:100
    %Add the first elements to the end just so that Matlab plots the cycle
     x(length(x)+1) = x(1);
    y(length(y)+1) = y(1);
    %Draw graph
    plot(x,y);
    
    %Remove the first element from the end before calculating the next x,y
    x(length(x)) = [];
    y(length(y)) = [];
    
    x = A*x;
    y = A*y;
end

disp(x)
disp(y)

hold off
end