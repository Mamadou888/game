puts "Pick the highest possible guessing number."
puts
range_limit = gets.chomp.to_i
puts
puts "How many tries would you like."
puts
max_tries = gets.chomp.to_i
random_number = rand(range_limit) + 1
guess = 0
tries = 0
def message(level) 
	puts "--------Too " + "#{level} !------------"
end
puts
	sleep 1.0 
	puts "..."
	sleep 1.0 
puts
puts "let's get started"
until guess == random_number || tries == max_tries
puts
puts "----------------------------------------------"
puts "Guess a number between 1 and #{range_limit}"
puts 
guess = gets.chomp.to_i
if guess > random_number
	message("high")
elsif guess < random_number
	message("low")
elsif guess == random_number	
puts "*****Your awesome. You got the correct number.*****"
end
puts
tries += 1 
until_limit = max_tries - tries
puts "You have #{until_limit} out of #{max_tries} tries left."
if tries == max_tries
	puts 
	#making loosing fun and embarrassing.
	5.times do 
	puts "Game over!!!!"
	puts 
	end
	puts "Too much guessing. Come on... you are better than that."
end
end 
