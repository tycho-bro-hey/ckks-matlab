function p = encode(z,basis,xi,M,scale)
% Encodes a vector by expanding it first to H,
% scale it, project it on the lattice of sigma(R), 
% and performs sigma inverse.
pi_z = pi_inverse(z);
scaled_pi_z = scale*pi_z;
rounded_scale_pi_zi = sigma_R_discretization(basis,scaled_pi_z)';
p = sigma_inverse(rounded_scale_pi_zi,xi,M);
p = real(round(p));
end