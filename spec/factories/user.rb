FactoryGirl.define do
  factory(:user) do
    email Faker::Internet.email
    password 'password'
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    trait :administrator do
      role User.roles[:administrator]
    end
    trait :user do
      role User.roles[:user]
    end
  end
end