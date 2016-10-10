FactoryGirl.define do
  factory :product do
    association :category
    name { Faker::Commerce.product_name }
    brand { Faker::Company.name }
    description { Faker::Lorem.paragraphs.join("<br /><br />").html_safe}
    price { Faker::Commerce.price}

    trait :deleted do
      deleted_at { Faker::Time.between(2.years.ago, Date.today) }
    end
  end
end
