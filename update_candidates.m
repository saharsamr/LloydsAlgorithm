function [candidates]=update_candidates(candidates, boundaries)
    bound_num = length(boundaries);
    upper_bound = boundaries(bound_num) + abs(boundaries(bound_num)); %TODO: check that they are proper bounds.
    lower_bound = boundaries(1) - abs(boundaries(1));
    candidates(1) = find_arg_min(lower_bound, boundaries(1));
    candidates(bound_num+1) = find_arg_min(boundaries(bound_num), upper_bound);
    for i=2:bound_num
        candidates(i) = find_arg_min(boundaries(i-1), boundaries(i));
    end
end
