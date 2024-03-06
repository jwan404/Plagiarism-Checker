function [score] = SimilarityScore (list, k, length_tot)
%SimilarityScore calculates a similarity score by taking a list of
%matched positions for a string and determining what proportion of 
%characters in a string matched.
%
%Inputs: list = A 1D array containing a list of indices which correspond 
%to position matches (this could be an empty array).
%         k = The k value indicates the length of each match
%(which will be a positive integer greater than zero). 
%        length = The total length of the string that was converted into k-grams.
%Output: score = The percentage of the string that matched, returned as a 
%decimal (e.g., 77% would be returned as 0.77).
%
%Author: Jenny Wang/jwan404

%When list is empty
if isempty(list)
    score = 0;
else
    %when there is only one element in list
    if length(list) == 1
        score = k/length_tot;   
    else
        %when list has more than one element
        if list(2)-list(1) >= k
            a = 2*k;
        else
            a = 0;
            a = 2*k - (k-(list(2)-list(1)));
        end  
        for i = 2:length(list)-1
            diff = list(i+1) - list(i);
            if diff < k 
                a = a + diff;
            else
                a = a+k;
            end
        end
        if a > length_tot
            a = length_tot;
        end
        score = a/length_tot;
    end
end
end