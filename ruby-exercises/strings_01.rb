#string concatenation
#examplse below
# first_name = "Eduardo"
# last_name = "Sanchez"
# puts first_name + " " + last_name

#string interpolation
#'if we use singe cuotes didn't work the interpolation
#example line below
# puts "my first name is #{ first_name } and my last name is #{ last_name }"

#methods, how to find them
#you can see all the methods by using for example puts last_name.methods
#exampe line below
# puts first_name.reverse

#the scaper is a back slash that can ignore a special secuence or method, for example
#if we use the string interpolation but just before the #{} we use the back slash\ that ignore
#the interpolation

#input from user
# examplse below 
# puts "quien sera mi esposa?"
# sera = gets.chomp
# puts "sera? #{sera}"
#if we want to get a input for a mat operation it's necessary to use the .to_i method to make it posible 
# puts "enter a number to multiply by 3"
# number_to_multiply = gets.chomp
# puts number_to_multiply.to_i * 3

#first homework, name analyzer
puts "Your full name?"
homework_first_name = gets.chomp
puts "Your last name?"
homework_last_name = gets.chomp

puts "Your full name is #{homework_first_name} #{homework_last_name}"
puts "Your full name reversed is #{homework_first_name.reverse} #{homework_last_name.reverse}"
full_name_lenght = homework_first_name.length + homework_last_name.length
puts "your name has #{full_name_lenght} in it"