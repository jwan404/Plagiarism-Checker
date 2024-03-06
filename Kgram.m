function [cell_array] = Kgram (k, array_char)
%Kgram takes a string and divides it into a sequnece of k-grams, where each
%element is k characters long.
%
%Inputs: k = number of characters in an element (a positive integer greater
%than 0).
%        array_char = a string in the form of an array of characters
%Output: cell_array = a 1xn cell array where each element of the array is
%one of the k-grams. If k is greater than the length of the string, a 1x1
%cell array containing the string is returned.
%
%Author: Jenny Wang/jwan404

%Divides up the string into sequence of k-grams by taking the first k
%characters to be the first k-gram, then moving one position along the 
%string and grabbing another k characters to form the next k-gram.
if k <= length(array_char)
    for i = 1:length(array_char)-k+1
        cell_array{i} = array_char(i:i+(k-1));
    end
else
    cell_array = {array_char};
%Makes when if k is bigger than the array_char, it will return a 1x1 cell
%array
      
end
 
end