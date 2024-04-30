function poly_mod = gen_polymod(n)
% Generates the polynomial modulus for RLWE

poly_mod = zeros(1,n-1 + 2);
poly_mod(1) = 1;
poly_mod(end) = 1;
end