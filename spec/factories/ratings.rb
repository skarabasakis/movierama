FactoryBot.define do
  factory :rating do
    user
    movie
  end

  factory :like, parent: :rating do
    score :like
  end

  factory :hate, parent: :rating do
    score :hate
  end
end
