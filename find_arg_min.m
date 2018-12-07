function [min_index]=find_arg_min(lower_bound, upper_bound)
    range = lower_bound:upper_bound;
    min_ = sum(range)^2;
    min_index = lower_bound;
    for i=lower_bound:upper_bound
        i
        sigma = distance_sigma(i, lower_bound, upper_bound);
        sigma
        if sigma < min_
            min_ = sigma;
            min_index = i;
            min_index
        end
    end
end
