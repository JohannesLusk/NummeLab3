function [newValue, delta] = Richardsson(values)
n = length(values);
NextValues = zeros(1, n-1);

if length(values) == 2
    delta = (values(2) - values(1));
    newValue = values(2) + delta/3;
else
    for i = 2:n
    delta = (values(i) - values(i-1));
    NextValues(i - 1) = values(i) + delta/3;
    end

    [newValue, delta] = Richardsson(NextValues);
end



end