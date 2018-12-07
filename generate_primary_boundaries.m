function [boundaries]=generate_primary_boundaries(average, sigma, b)
    num_of_boundaries = 2^b - 1;
    % boundaries = zeros(num_of_boundaries);
    middle = (num_of_boundaries+1)/2;
    boundaries(middle) = average;
    sides_len = 2^(b-1) - 1;
    for i=1:sides_len
        boundaries(middle+i) = average + sigma*i;
        boundaries(middle-i) = average - sigma*i;
    end
end
