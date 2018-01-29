function result = maclaurin_sinx(x,N)

% x = -2*pi: 0.01: 2*pi;

factorialTerm = 0;
polynomialTerm = 0;
derivativeTerm = 0;

partialSum=0;

for i=0:1:N
    factorialTerm = factorial(i);
    polynomialTerm = power(x,i);
    derivativeTerm = kth_derivative_sinx(i,0);
    
    partialSum = partialSum + derivativeTerm * 1/factorialTerm * polynomialTerm;
    
end
result = partialSum;

end