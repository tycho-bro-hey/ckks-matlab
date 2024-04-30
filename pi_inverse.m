function result = pi_inverse(z)
    % Expands a vector of C^{N/2} by expanding it with its complex conjugate.

    z_conjugate = conj(flip(z));
    result = [z, z_conjugate];
end