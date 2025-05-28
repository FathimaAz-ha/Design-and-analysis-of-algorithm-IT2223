%n=10;
%for i=1:n
%    disp(i);  
%end

%n=100;
%for i=1:n
%    disp(i)
%end

%n=1000; 
%for i =1 :n
%    disp(i);
%end

n=1000;
tic;  %start timing - tic
for i=1:n
    disp(i);;  
end

elapsedTime = toc;

fprintf('Elapsed time : %fseconds\n', elapsedTime);


