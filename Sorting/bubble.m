array = [64,34,25,12,22,11,90];
n = length(array);

for i = 1:n-1
    
    for j=1:n-i %u can also use n-1 but not necessary
       
        if array(j) > array(j+1) %adjacent element 
            temp = array(j);
            array(j) = array(j+1);
            array(j+1)=temp;

        end

    end
disp('sorted array using bubble sort');
disp(array);

end
