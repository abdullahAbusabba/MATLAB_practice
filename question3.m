format compact %Format Line Spacing in Output
X = input("enter a vector : ");

uniqueX = unique(X);%returns the same data as in X, but with no repetitions. uniqueX is in sorted order
countOfX = hist(X,uniqueX); % returns a vector corresponding for each repeated value in X
indexToRepeatedValue = (countOfX~=1);% returns a logical array 0 means no repetition and 1 otherwise

repeatedValues = uniqueX(indexToRepeatedValue)% returns repeated values
numberOfAppearancesOfRepeatedValues = countOfX(indexToRepeatedValue) % returns how many times of repetitions 

%{
sample input:

enter a vector : 
[10 10 23 45 45 70 70 0 1]
repeatedValues =
    10    45    70
numberOfAppearancesOfRepeatedValues =
     2     2     2
%}