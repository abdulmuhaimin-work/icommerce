FactoryGirl.define do
  factory :category do
    name { Faker::Commerce.department }
    deleted_at nil

    trait :deleted do
      deleted_at { Faker::Time.between(2.years.ago, Date.today) }
    end
  end
end
