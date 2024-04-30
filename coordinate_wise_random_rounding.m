function rounded_coordinates = coordinate_wise_random_rounding(coordinates)
% Rounds coordinates randomly.
r = round_coordinates(coordinates);
% Initialize an empty array f
f = zeros(size(r));

for i = 1:numel(r)
    c = r(i);
    choices = [c, c-1];
    probabilities = [1-c, c];
    f(i) = randsample(choices, 1, true, probabilities);
end

rounded_coordinates = coordinates - f;
end