a = [1, 2, 3, 4, 5, 6, 7, 8]
# p a.last
#range operator ..
x = 1..20
print x.to_a.shuffle 
puts
print x
puts
z = x.to_a.shuffle! #using the ! transform and mutate the original array, meaning, transform the original element
print z
puts

#mutating the array using !
a = (1..20).to_a
print a 
puts
a.reverse!
print a
puts 

#arraya of range of letters
q = "a".."z"
print q.to_a.shuffle
puts

#How to add an element into an array
first_array = ["a", "b", "c", "d", "e"]
print first_array
puts
#first we can add an element in the last index of the array using <<
first_array << "f"
print first_array
puts #the second way to add an element is using the .append"letter" method but in lattest vertion of ruby i guess :,D
# but there is a method to add ath the beggining of the array
first_array.unshift("added first")
print first_array
puts
#to make uniq values 
first_array << "added first"
print first_array
puts
print first_array.uniq! #but remember to use ! if you want to mutate the original element
puts
#to se if some element is inside the array use .include?("element")
print first_array.include? "e"
puts
#we have the push and pop method here and works the same as works in JS
first_array.push "last item"
print first_array
puts
first_array.pop
print first_array
puts
# we have a function to merge all the data inside and also to use separators in between elements 
list_a = first_array.join "||"
print list_a
puts
#and once we have the elements united we can split it and specify in what element divide the values
print list_a.split "||" 
puts
#we can create a array from a paragraph like this
fast_array_creation = %w(this is how this amazing method works man)
print fast_array_creation
puts
#and if we don't want to use write the las exprecion we can use the underscore to copy th last exprecion 
# z = _
# print z  #but this only works in the ruby console
# puts


#iterators
#for in
for i in fast_array_creation
    puts i
end

#the prefered way to iterate is whit each do ||
fast_array_creation.each do |variable|
    puts variable
end

#and we can iterate in one line 
fast_array_creation.each { |variable| puts variable.capitalize }

#in this example we are creating a new array using what we learn and iterating using a select method
#the select method as we can see, takes the element that match the exprecion in this case
#if the number is odd
second_array_range = (1..20).to_a.shuffle
print second_array_range.select { |number| number.odd? }
puts

string_array = ['eduardo', 'samantha', 'karen', 'naomi']
print string_array.select { |name| name == 'samantha'}



