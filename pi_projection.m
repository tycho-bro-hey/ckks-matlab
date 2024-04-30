function result = pi_projection(z,M)
    % Projects a vector of H into C^{N/2}.
    
    N = floor(M / 4);
    result = z(1:N);
end