FactoryBot.define do
  factory :user do
    password { Faker::Internet.password(min_length: 13, max_length: 20, mix_case: true, special_characters: true) }

    fullname { Faker::Lorem.paragraph_by_chars(number: 255) }

    email { Faker::Internet.unique.email }
  end
end
