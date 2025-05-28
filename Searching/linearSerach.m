arr = [3,5,7,9,11,13];
target = 13;

n = length(arr);
found = false;
for i=1:n
    if arr(i) == target
        found = true;
        index = i;
        break;
    end
end
if found
    fprintf('Element found at the index : %d \n', index)
else
disp('Element Not found!');
end