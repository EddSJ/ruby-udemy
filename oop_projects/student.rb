require_relative 'bcrypt_toolkit_mixin_use'# import the relative path to use the mixin

class Student
  include BcryptUsage #inluding the module to use it as a mixin 

  attr_accessor :first_name, :last_name, :username, :email, :password


  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end


  def to_s
    "First name: #{@first_name}, Last nane: #{@last_name}, username: #{@username}, email: #{@email}"
  end
end

#common instatination of the class
eduardo = Student.new("Eduardo", "Sanchez", "EddSJ", "eddiekidd98@gmail.com",
                      "password1") 
samantha = Student.new("Samantha", "Esparza", "SamEA", "eddiekidd98@gmail.com",
                      "password2") 

#use of the module as a mixin that allows to use the method as a part of the class it self
hashed_password = samantha.create_hash_digest_password samantha.password
puts hashed_password