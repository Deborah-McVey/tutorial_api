FactoryBot.define do
  factory :tutorial do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
    published { Faker::Boolean }
  end
end
