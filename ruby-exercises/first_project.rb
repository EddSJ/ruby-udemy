users = [
    { username: "eduardo", password: "password1"},
    { username: "fernando", password: "password2"},
    { username: "susan", password: "password3"},
    { username: "miriam", password: "password4"}
]



runing = true
counter = 0
loggin_status = nil
credential = {}
while runing 
    puts "enter you name"
    name = gets.chomp
    puts "enter you password or 'n' to close"
    password = gets.chomp
    
    users.each do | v |
        if v[:username] == name && v[:password] == password
            credential[:username] = v[:username]
            credential[:password] = v[:password]
            loggin_status = true
        end
    end

    if password == 'n'
        puts "See you latter"
        runing = false
    elsif loggin_status
        puts "Welcome"
        puts credential
        puts "Whants to continue? y/n"
        answer = gets.chomp
        if answer == 'n'
            runing = false
        else
            counter = 0
            loggin_status = false
            puts "loop keeping working"
            puts "counter #{counter}"
        end
    else
        counter += 1
        if counter == 3
            runing = false
        end
        puts "loop keeping working"
        puts "counter #{counter}"
    end
end