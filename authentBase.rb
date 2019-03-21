users = [
          {username: "Fred", password: "logicaldown" },
          {username: "Jeremiah", password: "JeremySp0ke4nd"},
          {username: "Meghan", password: "BAangel201"},
          {username: "jack", password: "PlugNPlay2020"},
          {username: "Shinobu", password: "Kissshot"},
          {username: "Ougi", password: "t0le34d4str4y"},
          {username: "Ana", password: "undead4ngel"}
        ]

def auth_use(username, password, list_of_users)
list_of_users.each do |user_rec|
  if user_rec[:username] == username && user_rec[:password] == password
   return user_rec
  end
 end
   return "Incorrect credentials"
end

puts "Welcome to the authenticator"
25.times {print "-"}
puts
puts "This program will take input from the user and see if it matches username/password information"
puts "If password is correct, you will receive a user object which in a real application would likely be some form of token as a form of authentication."


attempts = 1
while attempts <= 3
 print "Username: "
 username = gets.chomp
 print "Password: "
 password = gets.chomp
 authent = auth_use(username, password, users)
 
 puts authent

 puts "Press n to quit or any other key to continue: "
 input = gets.chomp.downcase
 break if input == "n"
 attempts += 1
end
