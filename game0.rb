#Get my number game (redundant because fun!)
#Written by "Jack Miller"

puts "Welcome to Eating Unripe Things for Beginners"
puts "Want my number?"

print "What's your name this time? "

input = gets

names = input.chomp

puts "Welcome #{names}!"

#Store a number for player to guess
puts "I've got a number for you to guess"
puts "Guess it?"

target = rand(90000) + 1

num_guess = 0

guessed = false

remaining_guess = 10000000000000-num_guess

puts "#{remaining_guess} guesses left."

until remaining_guess == 0 || guessed
  
print "Make a guess: "
guess = gets.to_i
  
num_guess = num_guess + 1
  
if guess < target
  puts "Awps. Low Guess."
elsif guess > target
  puts "High Guess."
else
  puts "System integrity check complete; accurate answer"
  puts "Yoiu guessed my number in #{num_guess} guesses"
  guessed = true
end
  
end

unless guessed 
  puts "Nope, the number was #{target}."
end
