function [f] = Fingerprint (win)
%Fingerprint takes a set of windows (in the form of a 2D array) and calculates a document
%fingerprint using the winnowing algorithm (i.e., we select the rightmost minimum from
%each window). It will return the document fingerprint as a 2D array in which each
%column contains a winnowed value and its corresponding position.
%(https://au.mathworks.com/matlabcentral/answers/173516-how-to-delete-repeated-column-in-this-matrix)
%(Date: 10/9/2022) - "How to delete repeated column in this matrix?"
%
%Input: win = A n x w 2D array representing a set of windows, 
%where each window has w values in it.
%Output: f = A 2 row 2D array representing a fingerprint, which 
%consists of a set of winnowed values (the first row) and the 
%relative positions of those values (the second row). Each column
%of the output, therefore, contains a hash value/position pair.
%
%Author: Jenny Wang/jwan404

%gives dimension of window
[rows, cols] = size(win);

%formula: row no. + window position - 1 = original array position
for i = 1:rows
    [m, pos] = RightMin(win(i,:));
    f(1,i) = m; 
    f(2,i) = i + pos - 1 ;  
end

%Gets rid of duplicates
f = unique(f.', 'rows', 'stable').';
end