#  condition = false
#  another_condition = true
# if !condition || another_condition
#     puts "this evaluated to true"
# else
#     puts "this evaluated to false"
# end
# puts "la la la"

# neme = "eduardo"
# if name == "eduardo"
#     puts "welcome to the program Edaurdo"\
# elsif name == "sam"
#     puts "welcome to the program sam"
# else
#     puts "welcome to the program user"
# end

def multiply(first_num, second_num)
    first_num.to_f * second_num.to_f
end
def devide(first_num, second_num)
    first_num.to_f / second_num.to_f
end
def add(first_num, second_num)
    first_num.to_f + second_num.to_f
end
def extract(first_num, second_num)
    first_num.to_f - second_num.to_f
end

puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
first_number = gets.chomp
puts "please enter your second number"
second_number = gets.chomp
puts "What operation you whant to perform?: "
puts "Enter 1 for multiply, 2 for addition, 3 for substraction"
user_entry = gets.chomp

if user_entry == "1"
    result = multiply first_number, second_number
    puts "Your operation is #{result}"
elsif user_entry == "2"
    result = add first_number, second_number
    puts "Your operation is #{result}"
elsif user_entry == "3"
    result = extract first_number, second_number
    puts "Your operation is #{result}"
else
    puts "invalid entry"
end
