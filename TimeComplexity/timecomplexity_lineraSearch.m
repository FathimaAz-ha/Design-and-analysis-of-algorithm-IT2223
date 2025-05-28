array = [3,6,8,14,17,25,29,31,36,42,47,53,55,62];
target=47;
tic; 
n=length(array);
for i=1:n
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

fprintf('Elapsed time : %fseconds\n', elapsedTime);

