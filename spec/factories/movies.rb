FactoryBot.define do
  factory :movie do
    user
    title FFaker::Movie.title
    description FFaker::Lorem.paragraph
  end

  trait :with_descending_timestamps do
    sequence(:created_at) { |n| Time.now - n.seconds }
    updated_at { created_at }

    after(:create) { record_timestamps = false }
  end
end
