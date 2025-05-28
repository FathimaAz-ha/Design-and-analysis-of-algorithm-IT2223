for variable=1:10
    disp(variable)
end

for variable=1:2:15
     disp(variable)
end

for i=1:10
    disp(i)
end

%%write a for loop to calculate the sum of the numbers from 1 to 10
sum = 0;
for i=1:10
    sum = sum + i;
end
disp(sum)

%%to findout the factorial of 5
fact = 1;
n=5;

if (n==0 || n==1)
    fact = 1;
else 
for i=1:5
    fact=fact*i;
end
disp(fact)
end

