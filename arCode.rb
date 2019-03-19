dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "ozaukee" => "262",
  "milwaukee" => "414",
  "edison" => "908",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407"
  }

  def getCityNames(hashes)
    puts "Cities Available:"
    hashes.keys
  end

  def g3tAreaCode(hashes, key)
    hashes[key]
  end

  loop do
   puts "Do you want to lookup an area code based on a city name? (Y/N)" 
   answer = gets.chomp.downcase
   break if answer != "y"
   puts "Here are the cities to choose for lookup:"
   puts getCityNames(dial_book)
   puts "Enter your selection"
   prompt = gets.chomp
   if dial_book.include?(prompt)
     puts "The area code for #{prompt} is #{g3tAreaCode(dial_book, prompt)}"
    else
      puts "You entered a city name bot in the dictionary"  
  end
 end
