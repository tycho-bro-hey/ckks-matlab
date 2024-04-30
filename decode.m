function pi_z = decode(p,scale,xi,M)
% Decodes a polynomial by removing the scale, 
% evaluating on the roots, and project it on C^(N/2)
rescaled_p = p / scale;
z = sigma(rescaled_p, xi, M);
pi_z = pi_projection(z,M);
end