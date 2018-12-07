function [s]=distance_sigma(x, lower_bound, upper_bound)
    range = lower_bound:upper_bound;
    s = sum(arrayfun(@(t) ((t-x)^2), range));
end
