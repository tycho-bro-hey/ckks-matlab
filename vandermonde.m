function v_matrix = vandermonde(xi,M)
% VANDERMONDE MATRIX
%   computes the vandermonde matrix from m-th root of unity
N = floor(M / 2);
v_matrix = zeros(N, N);

% We will generate each row of the matrix
for q = 1:N
    % For each row, we select a different root
    root = xi ^ (2 * q - 1);
    row = zeros(1, N);

    % Then we store its powers
    for k = 1:N
        row(k) = root ^ (k - 1);
    end

    v_matrix(q, :) = row;
end

end