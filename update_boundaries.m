function [boundaries]=update_boundaries(boundaries, candidates)
    for i=1:length(boundaries)
        boundaries(i) = (candidates(i)+candidates(i+1))/2;
    end
end
