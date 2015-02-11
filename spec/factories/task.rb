FactoryGirl.define do
  factory :task do
    title
    description { Faker::Lorem.paragraph }
    tag { Task::VALID_TAGS.sample }
    estimation { 1 + rand(10) }
  end
end
