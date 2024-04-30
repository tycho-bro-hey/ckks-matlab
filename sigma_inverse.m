function p = sigma_inverse(b,xi,M)
%SIGMA_INVERSE 
%   Encodes the vector b into a polynomial using an M-th root of unity
A = vandermonde(xi,M);
coeffs = A \ b';
p = coeffs;
end