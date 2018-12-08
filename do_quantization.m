function [candidates, boundaries]=do_quantization(sigma, b)
    average = 0;
    boundaries = generate_primary_boundaries(average, sigma, b);
    candidates = init_candidates(boundaries, sigma);
    converged = false;
    while ~converged
        pre_bounds = boundaries;
        candidates = update_candidates(candidates, boundaries);
        boundaries = update_boundaries(boundaries, candidates);
        if (boundaries == pre_bounds)
            converged = true;
        else
            boundaries - pre_bounds
        end
    end
end
