require 'random_data'
require 'faker'

50.times do
  Wiki.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end

50.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

User.create!(
  email: 'admin@example.com',
  password: 'password',
  role: 2
) 

User.create!(
  email: 'premium@example.com',
  password: 'password',
  role: 1
)

User.create!(
  email: 'user@example.com',
  password: 'password',
  role: 0
)
 
puts "Seed finished"
puts "#{Wiki.count} wikis created."
puts "#{User.count} users created."