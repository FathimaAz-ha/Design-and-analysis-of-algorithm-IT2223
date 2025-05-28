%syntax of function
%function output = functionName(input parameters)
    %statements
%end

%calling function to execute
%functionName(arguments) 
%variable = functionName(arguments)

%Ex 1: 
function sum = addNumbers(x,y)
sum = x + y ;
end

addNumbers(5,6)
addNumbers(8,12)

%ex 2 :
function [add,sub,mul] = operations(a,b)
add = a + b;
sub = a - b;
mul = a * b;
end

operations(5,2)
%calling a function without assigning a variable executes the first
%operation only
%so assign a variable like below
[add,sub,mul] = operations(5,4)


%input an argument and it outputs a message
function greet(name)
    disp(['Hi ',name]);
end

greet('Azha')

function piValue = getPi()
piValue = 3.146;
end

getPi()

%no input no output
function myFunction()
disp('Helo, This function has no inputs and no outputs')
end

myFunction()

%Find factorial using for loop
%to find the factorial of number 5

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

%Find factorial using recursion
function factorial = findFactorial(num)
if (num==0 || num==1)
    factorial = 1;
else 
   factorial = num * findFactorial(num-1);
end
end

Factorial_Using_function = findFactorial(5)