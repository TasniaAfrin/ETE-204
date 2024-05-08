
function y = interleave_vectors(a, b)
    if isempty(a)
        y = b;
    elseif isempty(b)
        y = a;
    else
        y = [a(1) b(1) interleave_vectors(a(2:end), b(2:end))];
    end
end