function outputs = sigma(p, xi, M)
    % Decodes a polynomial by applying it to the M-th roots of unity.
    p = flip(p);
    outputs = zeros(1, M/2);

    % We simply apply the polynomial on the roots
    for i = 1:M/2
        root = xi^(2*i - 1);
        output = polyval(p, root);
        outputs(i) = output;
    end
end