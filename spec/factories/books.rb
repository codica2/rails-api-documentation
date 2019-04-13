FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    description { Faker::ChuckNorris.fact }
  end
end
