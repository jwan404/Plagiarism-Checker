function [m, pos] = RightMin (array)
%RightMin function finds the value and position of the rightmost minimum in
%an array of values.
%
%Input: array = a 1D array of values (the array must contain at least one
%value)
%Outputs: m = the minimum value
%         pos = the rightmost position of that minimum
%
%Author: Jenny Wang/jwan404

%find the minimum and position of it
m = min(array);
pos = find(array == m,1, 'last');

end