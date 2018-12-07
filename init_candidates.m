function [candidates]=init_candidates(boundaries, sigma)
    len = length(boundaries) + 1;
    for i=1:len-1
        candidates(i) = boundaries(i) - sigma/2;
    end
    candidates(len) = boundaries(len-1) + sigma/2;
end
