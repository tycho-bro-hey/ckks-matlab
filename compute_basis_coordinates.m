function output = compute_basis_coordinates(sigma_R_basis, z)
    % Computes the coordinates of a vector with respect to the orthogonal lattice basis.
    output = zeros(1, numel(z));
    
    for i = 1:numel(z)
        b = sigma_R_basis(i, :);
        output(i) = real(dot(z, b) / dot(b, b));
    end
end