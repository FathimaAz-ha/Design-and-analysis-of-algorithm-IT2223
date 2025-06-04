array = [64, 25, 12, 22, 11];

stack = [1, length(array)];

while ~isempty(stack)
    right = stack(end); stack(end) = [];
    left = stack(end); stack(end) = [];

    if left < right
        pivot = array(right);
        i = left - 1;

        for j = left:right-1
            if array(j) <= pivot
                i = i + 1;
                temp = array(i);
                array(i) = array(j);
                array(j) = temp;
            end
        end

        temp = array(i+1);
        array(i+1) = array(right);
        array(right) = temp;

        p = i + 1;

        stack = [stack, left, p - 1, p + 1, right];
    end
end

disp('Sorted array using Quick Sort:')
disp(array)
