[arr1] = xlsread('cheapestOptions.xlsx');    

for i = 1:1614
 x(i) = arr1(i, 2);
 y(i) = arr1(i, 1);
end

[arr2] = xlsread('fastestOrders.xlsx');    

for i = 1:1351
 a(i) = arr2(i, 2);
 b(i) = arr2(i, 1);
end

[arr2] = xlsread('topRated.xlsx');    

for i = 1:247
 w(i) = arr2(i, 2);
 z(i) = arr2(i, 1);
end

c = [];
d = [];

c = [];
d = [];
r = 1;
for i = 1:1351
    for j = 1:1614
        for k = 1:247
            if(a(i) == x(j) && w(k) == a(i))
                c(r) = a(i);
                d(r) = b(i);
                r = r+1;
            end
        end
    end
end

s3 = scatter(c,d, 10, 'blue', 'filled');