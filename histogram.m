% Calculates a histogram for a given data set
%
% Parameters:  input - Data set to calculate histogram for
%                min - Lower edge value of smallest bin
%                max - Upper edge value of largest bin
%            numBins - The number of data bins to display
%
%     Return:  Histogram vector of length numBins
function h = histogram(input, min, max, numBins)

    %%%%    Error handling    %%%%
    if min >= max
        error('Min must be less than max')
    end
    if numBins <= 0
        error('# bins must be greater than 0')
    end

    
    % Size of an individual bin
    binSize = (max - min) / numBins;
    
    % Allocate memory for histogram
    h = zeros(numBins, 1);
    
    % Get lower limit for each bin
    limits = getLimits(min, max, numBins, binSize);
    
    %%%%%    Populate histogram    %%%%
    % Loop through input
    for i = 1 : length(input)
        
        % Loop through histogram
        for j = 1 : numBins
            if input(i) >= limits(j) && input(i) < limits(j + 1)
                h(j) = h(j) + 1;
            end
        end
        
        % Handle values outside of the range
        if input(i) < min
            h(1) = h(1) + 1;
        end
        if input(i) >= max
            h(numBins) = h(numBins) + 1;
        end
    end
    
    % Normalize data. I.e. sum of the histogram should equal 1.
    for i = 1 : length(h)
        h(i) = h(i) / length(input);
    end
end
