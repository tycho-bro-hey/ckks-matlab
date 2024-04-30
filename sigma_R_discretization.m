function y = sigma_R_discretization(sigma_R_basis,z)
%UNTITLED23 Summary of this function goes here
%   Detailed explanation goes here
coordinates = compute_basis_coordinates(sigma_R_basis,z);
rounded_coordinates = coordinate_wise_random_rounding(coordinates);
y = sigma_R_basis.'*rounded_coordinates';
end