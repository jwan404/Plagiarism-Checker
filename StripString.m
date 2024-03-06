function [array_char] = StripString (array_str)
%StripString removes whitespace and other unprintable characters, and
%convert all uppercase characters to lowercase.
%
%Inputs: array_str = a string
%Outputs: array_char = an array of characters without unprintable
%characters and is all in lowercase. If the original string only contained
%unprintable characters or was empty, then an empty string is returned.
%
%Author: Jenny Wang/jwan404

%set character array to empty string
array_char = '';

%sets condition so all unprintable characters are removed
for i = 1:length(array_str)
if (array_str(i) >= 33) && (array_str(i) <= 126)
    %append adds on to the end of the output array, and lower = lowercase
    array_char = append(array_char, array_str(i));
   array_char =  lower(array_char);
end

end

end