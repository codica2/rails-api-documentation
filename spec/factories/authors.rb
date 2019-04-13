FactoryBot.define do
  factory :author do
    name { Faker::Book.author }
  end
end
