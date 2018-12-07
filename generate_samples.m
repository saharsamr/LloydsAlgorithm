function [samples]=generate_samples(average, sigma, N)
    samples = [];
    for i = 1:N
        samples(i) = random('Normal', average, sigma);
    end
end
