function [windows] = Window (w, integers)
%Window takes a sequence of integer values and creates a 2D array of windows for
%a specified window size w.
%
%Inputs: w = the window size
%        integers = a 1D array of integer values
%Output: windows = a 2D array of integer values where each row of the array
%is a window containing w integer values. If w is greater than the length
%of the array, the array is returned.
%
%Author: Jenny Wang/jwan404

%similar concept to Kgram except output is a 2D array.
% ':' sets multiple rows in window array.
if w <= length(integers)
    for i = 1:length(integers)-w+1
        windows(i, :) = integers(i:i+w-1);
    end
else
        windows = integers; 
end
 
end