[arr1] = xlsread('topTips.xlsx');    

for i = 1:267
 x(i) = arr1(i, 2);
 y(i) = arr1(i, 1);
end



%hold on
s1 = scatter(x,y, 10, 'red', 'filled');


[arr2] = xlsread('topRated.xlsx');    

for i = 1:247
 a(i) = arr2(i, 2);
 b(i) = arr2(i, 1);
end

s2 = scatter(a,b, 10, 'green');
hold off
pause

c = [];
d = [];
r = 1;
for i = 1:247
    for j = 1:267
        if(a(i) == x(j))
            c(r) = a(i);
            d(r) = b(i);
            r = r+1;
        end
    end
end

s3 = scatter(c,d, 10, 'blue', 'filled');
