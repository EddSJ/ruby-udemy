#we can make many opration mith numbers but i need to rember that we need 
#to combert to float in case of results with decimal numbers 
#very basi examples 
#puts 12 + 12 
#puts 10 / 4 #-> the result in terminal of this is 2, and this is because we need to tranform one of the numbers on float
#puts 10.0 / 4
#or
#puts 10.to_f / 4 #both of this works the same
#number_one = 10
#number_two = 10
#puts number_one * number_two 

#and we can make some operatoins with numbers an strings for example
#20.times { print "-" } 
#10.times { puts "Wherever" }
#5.times { puts rand(12) } #rand create random numbers
#the brackets is a block of code so if we explain how this works at of what so far we see
#the times method  perform the number of times we use and insede the brackets it's the action 
#performed 

#puts "simple calculator"
#25.times {print "-"}
#puts
#puts "enter a number"
#num_1 = gets.chomp
#puts "enter a second number"
#num_2 = gets.chomp
#puts "the first number multiply by the second numnber is #{ num_1.to_f * num_2.to_f }"

#in ruby the last evaluated expretino has the return so is no necesary to use 
#methods
def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end
def devide(first_num, second_num)
    first_num.to_f / second_num.to_f
end
def add(first_num, second_num)
    first_num.to_f * second_num.to_f
end
def extract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

