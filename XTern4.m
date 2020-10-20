hold on
[arr1] = xlsread('newSpots.xlsx'); 
arr1;
y = arr1(:,1);
x = arr1(:,2);


scatter(x,y, 30, 'blue')

[arr2] = xlsread('topRated.xlsx');
a = arr2(:,2);
b = arr2(:,1);

scatter(a,b,10,'magenta');