require_relative 'crud'

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @username = username
    @email = email
    @password = password
  end

  def to_s
   "first name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email} 
  end
end

jack = Student.new("Jack", "Miller", "JRelative", "devbuild2018@gmail.com", "@LongFace2019")

hash_pass = jack.create_hash_digest(jack.password)

puts hashed_password
