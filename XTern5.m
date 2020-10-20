[arr1] = xlsread('ratingsVotes.xlsx');

for i = 1:1639
    arr1(i,1) = arr1(i,1) + 1/sqrt(arr1(i,2));
end

arr1(:,1)