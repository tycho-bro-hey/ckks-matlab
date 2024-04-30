function basis = create_sigma_R_basis(xi, M)
% Creates the basis (sigma(1), sigma(X), ..., sigma(X** N-1)).
basis = vandermonde(xi,M).';
end