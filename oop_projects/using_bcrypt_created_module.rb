require_relative 'bcrypt_toolkit'

users = [
  { username: "eduardo", password: "password1"},
  { username: "fernando", password: "password2"},
  { username: "susan", password: "password3"},
  { username: "miriam", password: "password4"}
]

hashed_users = BcryptUsage.create_secure_users users
puts hashed_users