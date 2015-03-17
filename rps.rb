# 1.) Ask for user input
# 2.) Computer chooses
# 3.) Compare the two choices
# 4.) Ask if user want to rerun program


puts "Welcome to Paper, Rock, Scissors!"

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

begin

 # get user choice
 begin
 puts "Choose between Paper(p), Rock(r), Scissors(s)"
 player_choice = gets.chomp.downcase

 end until CHOICES.keys.include?(player_choice)

 # randomize computer choice
 computer_choice = CHOICES.keys.sample

 # compare the two choices and print who won
 if player_choice == computer_choice
 puts "It's a tie"
 elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
 puts "You chose #{CHOICES[player_choice]} and the computer chose #{CHOICES[computer_choice]}. You win!"
 else puts "The computer chose #{CHOICES[computer_choice]} and you chose #{CHOICES[player_choice]}. Computer wins!"
 end

 # Rerun game?
 puts "Do you want to play again? (y/n)"
 stop_game = gets.chomp.downcase

end until stop_game != 'y'

# Only executed when loop is left, because player wants to quit.
puts "---- Thanks for playing! ----
 --- Good bye! ---"