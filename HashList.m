function [hashes] = HashList (array_str)
%HashList calculates the Hash31 value for every string stored in the cell
%array to generate a sequence of hashed values(in integers)
%
%Input: array_str = a 1xn cell array where each element of the array 
%is a string.
%Output: hashes = A 1xn array containing hash values for the corresponding 
%elements of the cell array.
%
%Author: Jenny Wang/jwan404

%goes through each element and converts them into a hashed value
for i = 1:length(array_str)
    hashes(i) = Hash31(array_str{i});
end

end