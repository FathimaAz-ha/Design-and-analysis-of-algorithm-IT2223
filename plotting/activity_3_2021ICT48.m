num_voters = input('\nEnter the total number of voters: ');
vote_counts = [0, 0, 0, 0];

for i = 1:num_voters
    disp('Voting Menu:');
    disp('1. Candidate A');
    disp('2. Candidate B');
    disp('3. Candidate C');
    disp('4. Candidate D');
    choice = input(['\nVoter ' num2str(i) ', enter your choice (1-4): ']);

    switch choice
        case 1
            vote_counts(1) = vote_counts(1) + 1;
        case 2
            vote_counts(2) = vote_counts(2) + 1;
        case 3
            vote_counts(3) = vote_counts(3) + 1;
        case 4
            vote_counts(4) = vote_counts(4) + 1;
        otherwise
            disp('Invalid vote!');
    end
end    

fprintf('Vote counts:\n');
fprintf('Candidate A: %d\n', vote_counts(1));
fprintf('Candidate B: %d\n', vote_counts(2));
fprintf('Candidate C: %d\n', vote_counts(3));
fprintf('Candidate D: %d\n', vote_counts(4));

[max_votes, winner_index] = max(vote_counts);
if sum(vote_counts == max_votes) > 1
    disp('It is a tie!');
else
    fprintf('The winner is Candidate %c with %d votes.\n', char('A' + winner_index - 1), max_votes);
end

while true
    disp('Visualization Menu:');
    disp('1. Show Bar Chart of Votes');
    disp('2. Show Pie Chart of Votes');
    disp('3. Show Scatter Plot of Votes');
    disp('4. Exit');
    
    vis_choice = input('Enter your choice (1-4): ');
    
    switch vis_choice
        case 1
            % Bar Chart
            figure;
            bar(vote_counts);
            title('Vote Counts for Candidates');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
            
        case 2
            % Pie Chart
            figure;
            pie(vote_counts, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Proportion of Votes');
            
        case 3
            % Scatter Plot
            figure;
            scatter(1:4, vote_counts, 100, 'filled'); % Random visual creativity
            title('Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Number of Votes');
            xticks(1:4);
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
            
        case 4
            % Exit
            disp('Thank you for using the program!');
            break;
            
        otherwise
            disp('Invalid choice. Please select a valid option (1-4).');
    end
end