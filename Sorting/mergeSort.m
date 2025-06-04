array = [64, 25, 12, 22, 11];

n = length(array);
width = 1;

while width < n
    i = 1;
    while i <= n
        left = i;
        mid = min(i + width - 1, n);
        right = min(i + 2*width - 1, n);

        n1 = mid - left + 1;
        n2 = right - mid;

        L = array(left:mid);
        R = array(mid+1:right);

        % Merge L and R into array(left:right)
        k = left;
        iL = 1;
        iR = 1;

        while iL <= n1 && iR <= n2
            if L(iL) <= R(iR)
                array(k) = L(iL);
                iL = iL + 1;
            else
                array(k) = R(iR);
                iR = iR + 1;
            end
            k = k + 1;
        end

        while iL <= n1
            array(k) = L(iL);
            iL = iL + 1;
            k = k + 1;
        end

        while iR <= n2
            array(k) = R(iR);
            iR = iR + 1;
            k = k + 1;
        end

        i = i + 2 * width;
    end
    width = 2 * width;
end

disp('Sorted array using Merge Sort:')
disp(array)
