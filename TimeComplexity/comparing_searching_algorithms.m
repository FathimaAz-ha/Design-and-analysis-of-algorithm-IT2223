array = 1: 1000;
target= 562;
found = false;
low=array(1);
high = length(array);

tic; 
while low<=high
    mid = floor((low+high)/2);

    if array(mid) == target
        found=true;
        index = i;
        break
    else
       if target< array(mid)
           high=mid-1;
       else
           low = mid+ 1;
       end
    end
end
if found
    fprintf ('Element found at the index : %d \n', index)
else
    disp("Element not found!")
end

elapsedTime = toc;
fprintf('Elapsed time of Binary Search : %fseconds\n', elapsedTime);



tic; 
n=length(array);
for i=1:1000
    if array(i) == target
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

elapsedTime = toc;

fprintf('Elapsed time of linear search : %fseconds\n', elapsedTime);