dial_book = [
  {city: "newyork", areacode: "212"},
  {city: "newbrunswick", areacode: "732"},
  {city: "ozaukee", areacode: "262"},
  {city: "milwaukee", areacode: "414"},
  {city: "edison", areacode: "908"},
  {city: "paloalto", areacode: "650"},
  {city: "evanston", areacode: "847"},
  {city: "orlando", areacode: "407"}
  ]

  def getCityNames(hashes)
  puts "Cities Available:"
    hashes.each do |key|
      puts "City: #{key}"
  end

  def g3tAreaCode(hashes)
    puts "Area Codes:"
    hashes.each do |value|
      puts "Area Code: #{value}"
  end

  loop do
   getCityNames(dial_book)
   puts "Please input a chosen city:" 
   answer = gets.chomp.downcase
   break if !dial_book.has_value?(answer)
   g3tAreaCode(dial_book)
   
  end
  
  
