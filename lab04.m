%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title: EGR223-02 Lab 4
% Filename: lab04.m
% Author: Scott VandenToorn, Dixit Gurung
% Date: 2/12/2020
% Instructor: Dr. Nicholas Baine
% Description: Using Histograms to Estimate the PDF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Seed random number generator
rng('shuffle');


%%%%%%%%%    Part 1    %%%%%%%%%
% Use your histogram function to estimate the PDF of the MATLAB PN
% (Pseudorandom Noise) generators. Include a single random-number seeding
% statement at the start of your main routine to avoid repeating the same
% experiment each time you run.

%%%% rand %%%%
% Lower edge value of smallest bin
min = -1;
% Upper edge value of largest bin
max = 2;
% Number of bins
numBins = 100;
% Size of an individual bin
binSize = (max - min) / numBins;

% 20000 random numbers
input = rand([20000 1]);

% Histogram data
h = histogram(input, min, max, numBins);

% Lower limits for each bin
limits = getLimits(min, max, numBins, binSize);

% Display bar chart
figure();
bar(limits, h)
title(numBins + " bins,  " + min + " <= X <= " + max)
ylabel('Occurrences')
xlabel('Value')


%%%% randn %%%%
% Lower edge value of smallest bin
min = -10;
% Upper edge value of largest bin
max = 10;
% Number of bins
numBins = 200;
% Size of an individual bin
binSize = (max - min) / numBins;

% 50000 random numbers
input = randn([50000 1]);

% Histogram data
h = histogram(input, min, max, numBins);

% Lower limits for each bin
limits = getLimits(min, max, numBins, binSize);

% Display bar chart
figure();
bar(limits, h)
title(numBins + " bins,  " + min + " <= X <= " + max)
ylabel('Occurrences')
xlabel('Value')


%%%%%%%%%    Part 2    %%%%%%%%%
% Create a new PN generator that is derived as the sum of 12 calls to the
% rand PN generator. Generate at least 50000 values of this new random
% number Xnew. Compute and plot the histogram for Xnew. Choose a range
% ?10 <= Xnew <= 10 using at least 200 bins.

% Lower edge value of smallest bin
min = -10;
% Upper edge value of largest bin
max = 10;
% Number of bins
numBins = 200;
% Size of an individual bin
binSize = (max - min) / numBins;

% 50000 random numbers
input = customRand(50000);

% Histogram data
h = histogram(input, min, max, numBins);

% Lower limits for each bin
limits = getLimits(min, max, numBins, binSize);

% Display bar chart
figure();
bar(limits, h)
title(numBins + " bins,  " + min + " <= X <= " + max)
ylabel('Occurrences')
xlabel('Value')