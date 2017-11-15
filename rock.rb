

def menu
	print "Enter your name: "
	@player = gets.chomp.downcase.capitalize
	puts "#{@player} is going to play Rock Paper Scissors with a computer!"
	puts "The first to win 3 rounds will win, so choose wisely!"
	game
end

def game
hands = ['rock', 'paper', 'scissors']
playerWins = 0
computerWins = 0
playerChoice = ''
computerChoice = hands[rand(3)]

 while playerWins < 3 && computerWins < 3
 	until hands.include?(playerChoice)
 		print "#{@player} make your decision (rock, paper, scissors):"
 		playerChoice = gets.chomp.downcase
 	end
 	computerChoice = hands[rand(3)]

 	if playerChoice == computerChoice
 		puts "Tie! Both the computer and #{@player} chose #{playerChoice.upcase}"
 	elsif (playerChoice == 'rock' && computerChoice == 'scissors') || (playerChoice == 'paper' && computerChoice == 'rock')	|| (playerChoice == 'scissors' && computerChoice == 'paper')
 		playerWins += 1
 		puts "#{@player} won this round with a #{playerChoice} beating the computer's #{computerChoice}"
 	else
 		computerWins += 1
 		puts "The computer's #{computerChoice} trumps #{@player}'s #{playerChoice}"
 	end
 	
 	playerChoice = ''
 	puts "The score stands at #{@player}: #{playerWins}, and computer: #{computerWins}."
 end
 
	if computerWins == 3
 		puts "Wow, #{@player} has lost a simple match of Rock, Paper, Scissors to the computer with a score of #{computerWins} to #{playerWins}"
 		puts "Better luck next time!"
	else
 		puts "#{@player} is the champion over the computer by a score of #{playerWins} to #{computerWins}"
 		puts "(Qeue Queen's: We are the champions!)"
	end
	menu
end

menu