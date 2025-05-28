string functions

%strcat() = concatinating two strings
str1 = 'apple';
str2 = 'banana';

result=strcat(str1,str2);
disp(result)

marks = {'hello', 'world', 'sri'};
result2 = strcat(marks{:})


result3 = strjoin(marks,':')
disp(result3)

%string comparison
wstr1='age';
wstr2='age';

result6 = strcmp(wstr1,wstr2)

stril = 'the cat sat on the mat';
indic=strfind(stril, 'cat');

%replace the word
old = 'cat';
new = 'dog';
reuslt7 = strrep(stril, old, new)

%splitting the string
inputstring='apple,banana,orange,grapes';
substring=strsplit(inputstring,',')

%uppercase and lower case
st1 ='appLE';
lower(st1)
%upper(st1)

strtrim('hello world') %remove the unwanted white space


%get a marks from the user and print the grade 
%marks>= 90 A+
%marks>= 80 A
%marks>= 70 B
%marks>= 60 C
%marks>= 50 D
%else f

marks=input('Enter the marks : ')
if marks<=100
if marks >= 90
   disp('A+')
elseif marks >=80
   disp('A')
elseif marks >=70
    disp('B')
elseif marks >=60
    disp('C')
elseif marks >=50
    disp('D')
else 
    disp('F')
end
else 
    disp('Invalid')
end


num1=input('Enter the number 1: ');
num2=input('Enter the number 2: ');
num3=input('Enter the number 3: ');

if num1 > num2 && num1 > num3
    disp(num1)
 
elseif num2 > num1 && num2 > num3
    disp(num2)
   
else
    disp(num3)
 
end

letter = input('Input the letter : ','s')
switch letter
    case 'a'
        disp('Vowel')  
    case 'e'
        disp('Vowel')
    case 'i'
        disp('Vowel')
    case 'o'
        disp('Vowel')
    case 'u'
        disp('Vowel')
    otherwise
        disp('consonent')

end
    
