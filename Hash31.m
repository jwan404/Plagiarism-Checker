function [h] = Hash31 (a)
%Hash31 calculates a hash value from an array of values
%
%Input: a = A 1D array of values (which could be a character array or an array of integers). It is
%           possible the input could be an array of length zero (i.e. an empty array).
%Output: h = An integer value calculated using the hash 31 algorithm.
%
%Author:Jenny Wang/jwan404

%set values for output and index
h = 0;
i = 1;

%while loop so each letter/integer will result in the hash value.
while i <= length(a)
    h = a(i) + 31*h;
    h = mod(h, 2^20);
    i = i + 1;    
end

end