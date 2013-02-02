random_number = rand(100) + 1
begin
puts "Guess a number between 1 and 100"
guess = gets.chomp.to_i
if guess > random_number
	puts "TOO high!"
elsif guess < random_number
	puts "Too low!"
else 
puts "Your awesome. You got the correct number."
end 
end until guess == random_number
