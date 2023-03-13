module BcryptUsage
  require 'bcrypt'
  puts "module loaded succesfuly"

  #how it works?
  #the two lines bemeath create que hashed password from a flat string
  # my_password = BCrypt::Password.create "string"
  # puts my_password

  #the two lines beaneath are used to compare an existing hashed password
  # my_password = BCrypt::Password.new "$2a$12$ucAMP5vTsVYCqlFuLbH5WOR1VHb3J1Sdp/25JwCmi4ERXlg4tZc8q"
  # puts my_password == "string"

  #visit the file bcrypt_toolkit if you want to see how it works as a module 

  #this going to be use and a little modification to use it inside the student.rb(class of student)
  #as a mixin, a mixin allows you yo use the functionality inside a class but call it as a method of the 
  #class it self you only need to remove the "self." that is at the beggining of the definition of the method

#how it looks before the modification
#def self.create_hash_digest_password(password)
  def create_hash_digest_password(password)
    BCrypt::Password.create password
  end

  def verify_hash_digest(password)
    BCrypt::Password.new password
  end

  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest_password user_record[:password]
    end
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && 
      verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credential are not correct"
  end
end