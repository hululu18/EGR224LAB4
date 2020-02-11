% Generates and returns an array of random numbers
%
%     Return array of random numbers
function array = customRand(size)
    array = zeros([size 1]);
    for i = 1 : size
        array(i) = sum12RandNums();
    end
end

% Sums and returns 12 calls to rand
%
%     Return: A random number
function r = sum12RandNums()
    r = 0;
    for j = 0 : 11
        r = r + rand();
    end
end