arr = [64, 25, 12, 22, 11];

n = length(arr);


for i = 1:n-1
    min_idx = i; %assume the minimum element as first index
    for j = i+1:n
        if arr(j) < arr(min_idx) %compare minimum value to the j   
            min_idx = j;
        end
    end
    
    if min_idx ~= i
        temp = arr(i);
        arr(i) = arr(min_idx);
        arr(min_idx) = temp;
    end
end


disp('Sorted array using Selection Sort:');
disp(arr);
