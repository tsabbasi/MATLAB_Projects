function result = kth_derivative_ex(k,x);

EX_PER_CYCLE = k;

ZERO = 0;

modVal = mod(k, EX_PER_CYCLE);
tmpResult = 0;
switch(modVal)
    case ZERO
        tmpResult=exp(x);
end

result = tmpResult;

end