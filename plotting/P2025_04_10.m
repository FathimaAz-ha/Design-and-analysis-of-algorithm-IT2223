for i=1:5
    marks(i)=input('Enter the Marks : ');
    disp(['you entered ', num2str(marks(i))])

    if marks(i) >= 90
    disp('A+')
 
elseif marks(i)>=80
    disp('Grade A')
    gpa(i) = 4.0;
   
elseif marks(i) >= 70
    disp('Grade B')
    gpa(i) = 3.0;
elseif marks(i)>=60
    disp('C')
    gpa(i) = 2.0;
elseif marks(i)>=45
    disp('S')
    gpa(i) = 1.0;

else 
    disp('Invalid Input')
end

end

GPA=mean(gpa);
fprintf('\nYour GPA is : %.2f\n', GPA)
    %%.2f = prints within 2 floating points

%switch case
day = input('Input the Number(1-5) :')
switch day
    case 1
        disp('Monday')  
    case 2
        disp('Tuesday')
    case 3
        disp('Wednesday')
    case 4
        disp('Thursday')
    case 5
        disp('Friday')
    otherwise
        disp('Invalid input')

end
    

%simple calculator
num1=input('Enter the number 1  : ');
num2=input('Enter the number 2  : ');
Operator=input('Enter the Operator : ', "s");
disp(['you entered ', num2str(num1)])
disp(['you entered ', num2str(num2)])


switch Operator
    case '+'
        disp(num1+num2)
    case '-'
        disp(num1-num2)
    case '*'
        disp(num1*num2)
    case '/'
        if num2==0
            fprintf('divisor is 0')
        else
        disp(num1/num2)
        end
    otherwise
        disp('Sorry!, Enter a valid operator!')
end