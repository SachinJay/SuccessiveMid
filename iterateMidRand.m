function iterateMidRand(num,iter)
%ITERATEMIDRAND same as IterateMid except this function produces its own
%vectors
%   produces vectors randomly using generateGaussian
%   produces matrix M using produceMidPointMat()

x = generateGaussians(1,num);
y = generateGaussians(1,num);
iterateMid(x',y',iter);

end