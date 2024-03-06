function [p1, p2] = FindMatchPositions (f1, f2)
%FindMatchPositions compares 2 fingerprints and determine which positions
%in fingerprint 1 have a value that is also found in string 2 and which
%positions in fingerprint 2 have a value that is also found in string 1.
%
%Inputs: fp1 = fingerprint for string 1
%        fp2 = fingerprint for string 2
%Outputs: p1 = a 1D array containing a list of index positions in string 1
%of all values that are also found in string 2. (Row array and if no
%matches are found an empty array is returned).
%         p2 = a 1D array containing a list of index positions in string 2
%of all values that are also found in string 1. (Row array and if no
%matches are found an empty array is returned).
%
%Author: Jenny Wang/jwan404

%set p1 and p2 to empty array, 0x0
p1 = [];
p2 = [];
%find indices for row 1 of f1 and f2
i1 = FindMatchIndices (f1(1,:),f2(1,:));
i2 = FindMatchIndices (f2(1,:),f1(1,:));
%if statement to return empty array if no matches found and returns
%position of matches if there are matches.
if i1 ~= 0 
    p1 = f1(2,i1);
    p2 = f2(2,i2);
else
end
end