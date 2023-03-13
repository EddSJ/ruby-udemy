#how to create our first class
class Student
    #ruby gives a very easy way to use getters and setter using the attr_accessor and 
    #infront of the method call as symbols atributes that we whant to have getters and setter
    attr_accessor :first_name, :last_name, :email, :password
    #we also have a getter creator if we only whant to have the getter for a atribute 
    # attr_reader :username #this only create the getter and if we whant to use a setter a error will be trigger
  
    #once you create the initialize method you won't need this anymore
    # @first_name
    # @last_name
    # @email
    # @username
    # @password
  
    #if you whant to initialize the class with values already we need to do this
    def initialize(first_name, last_name, username, email, password)
      @first_name = first_name
      @last_name = last_name
      @username = username
      @email = email
      @password = password
    end
  
    #hoe to create a setter
    #this works as a funtion nor like a setter itself
    # def first_name=(name) #using the = sign between the name of the method and the parentesis you can use it like a setter
    #   @first_name = name
    # end
  
    # #getter
    # def  first_name
    #   @first_name
    # end
  
    def to_s
      "First name: #{@first_name}, Last nane: #{@last_name}, username: #{@username}, email: #{@email}"
    end
  end
  
  # #instantiating the class
  eduardo = Student.new("Eduardo", "Sanchez", "EddSJ", "eddiekidd98@gmail.com",
                        "12345678") 
  samantha = Student.new("Samantha", "Esparza", "SamEA", "eddiekidd98@gmail.com",
                        "12345678") 
  
  puts eduardo
  puts samantha
  
  samantha.last_name = eduardo.last_name
  puts "Samantha edited"
  puts samantha
  # #using the getter
  # # eduardo.first_name("Eduardo") #even if this works is not correct 
  # eduardo.first_name = "Eduardo" #once you use the = sign now works like this 
  # eduardo.last_name = "Sanchez"
  # eduardo.email = "eddiekidd98@gmail.com"
  
  #using a getter
  #to get only the value of the first name we need to create the getter, similar as works in Java
  # puts eduardo.first_name
  # puts eduardo.last_name
  # puts eduardo.email
  # puts eduardo.username
  
  