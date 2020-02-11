% Calculates an array of lower limits for a given number of bins
%
% Parameters:    min - Lower edge value of smallest bin
%                max - Upper edge value of largest bin
%            numBins - The number of data bins to display
%            binSize - Size of each bin
%
%     Return:  Vector containing the lower limits of each bin
function limits = getLimits(min, max, numBins, binSize)
    % Get lower limit for each bin
    limits(1) = min;
    limits(numBins) = max;
    for i = 2 : numBins - 1
        limits(i) = limits(i - 1) + binSize;
    end
end