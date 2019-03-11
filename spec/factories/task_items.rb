FactoryBot.define do
  factory :task_item do |f|
    f.content { Faker::Lorem.sentence(4) }
    f.task { nil }
  end
end
