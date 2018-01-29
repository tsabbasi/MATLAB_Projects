function result = kth_derivative_sinx(k,x);

SINX_DER_CYCLE = 4;

ZERO = 0;
ONE = 1;
TWO =2;
THREE = 3;

modVal = mod(k, SINX_DER_CYCLE);
tmpResult = 0;
switch(modVal)
    case ZERO
        tmpResult=sin(x);
        
    case ONE
        tmpResult = cos(x);
        
    case TWO
        tmpResult = -sin(x);
        
    case THREE
        tmpResult = -cos(x);
end

result = tmpResult;

end