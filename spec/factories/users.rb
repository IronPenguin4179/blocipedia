FactoryGirl.define do
  factory :user do
    email 'email@email.com'
    password 'password'
    
    trait :admin do
      role :admin
    end
  end
end
