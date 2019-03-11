FactoryBot.define do
  factory :task do |f|
    f.title { Faker::String.random(3..12) }
    f.description { Faker::Lorem.sentence(5) }
  end
end
