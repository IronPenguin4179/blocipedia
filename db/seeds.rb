require 'random_data'

50.times do
  Wiki.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
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
puts "#{Wiki.count} wikis created"