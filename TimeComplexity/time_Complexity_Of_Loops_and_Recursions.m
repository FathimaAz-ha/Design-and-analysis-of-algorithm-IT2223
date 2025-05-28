tic;
n=input('Enter the number : ');
fact = 1;
if (n==0 || n==1)
    fact = 1;
else 
for i=1:x
    fact=fact*i;
end
disp(fact)
end
elapsedTime = toc;
fprintf('Elapsed time of factorial using loop: %fseconds\n', elapsedTime);

%Find factorial using recursion

function factorial = findFactorial(num)
if (num==0 || num==1)
    factorial = 1;
else 
   factorial = num * findFactorial(num-1);
end
end

tic;
Factorial_Using_function = findFactorial(5)
elapsedTime2 = toc;
fprintf('Elapsed time of factorial using function: %fseconds\n', elapsedTime2);