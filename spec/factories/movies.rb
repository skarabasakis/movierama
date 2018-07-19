FactoryBot.define do
  factory :movie do
    user
    title FFaker::Movie.title
    description FFaker::Lorem.paragraph
  end
end
