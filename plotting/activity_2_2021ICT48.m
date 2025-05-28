marks_array=[];
for i=1:5
marks=input('Enter the marks out of 100: ');
if marks<=100
    if marks >= 90
        disp('A')
    elseif (marks >=80 && marks <=89)
        disp('B')
    elseif (marks >=70 && marks <=79)
        disp('C')
    elseif (marks >=60 && marks <=69)
        disp('D')
    else 
        disp('F')
    end
    marks_array(end+1) = marks;
else 
    disp('Invalid')
    break
end
end

while(true)
y=input('\n1.Show all marks as a barchart\n2.Show Average Marks\n3.Exit\n');
switch y
    case 1
        bar(marks_array)
    case 2
        average=mean(marks_array,"all","double");
        fprintf('Average is : %d', average)
    case 3
        disp('Thank you ;)')
        break
end
end