FactoryBot.define do
  factory :note do
    user { create(:user) }

    content { Faker::Lorem.paragraph_by_chars(number: 255) }
  end
end
