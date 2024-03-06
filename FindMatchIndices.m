function [indices] = FindMatchIndices (array_1, array_2)
%FindMatchIndices compares two non-empty 1D and returns a list of index
%positions from array one of values that also appear in array 2. (The
%arrays being compared may be of different lengths)
%
%Inputs: array_1 = array 1
%        array_2 = array 2
%Outputs: indices = a 1D array containing a list of index positions in
%array 1 of all values that are also found in array 2. It will be a row
%array with values listed in order from smallest to largest. If no matches
%were found, an empty array is returned.
%
%Author: Jenny Wang/jwan404

%set indices to an empty array
indices = [];

%nested for loop so each value will be compared
for i=1:length(array_1)
    for j = 1:length(array_2)
     if array_1(i) == array_2(j)
         %stores and adds on to the array
         indices = [indices, i];
         break 
     end
    end
end
end