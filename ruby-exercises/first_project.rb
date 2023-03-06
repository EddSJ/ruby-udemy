status = true
while status
    puts 'Enter you answer or enter "n" to end'
    answer = gets.chomp
    if answer == 'n'
        puts "See you latter"
        status = false
    else
        puts "loop keeping working"
    end
end