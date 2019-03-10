FactoryBot.define do
  factory :task_item do
    content { "MyString" }
    task { nil }
  end
end
