FactoryBot.define do
  sequence :username do |n|
    "username#{n}"
  end

  factory :user do
    username
    password SecureRandom.base64(8)
  end
end
